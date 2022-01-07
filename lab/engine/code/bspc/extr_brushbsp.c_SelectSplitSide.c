
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ texinfo; int flags; int planenum; int surf; int winding; } ;
typedef TYPE_1__ side_t ;
typedef int qboolean ;
struct TYPE_12__ {int detail_seperator; } ;
typedef TYPE_2__ node_t ;
struct TYPE_13__ {int numsides; int testside; int side; TYPE_1__* sides; struct TYPE_13__* next; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_14__ {int type; } ;


 int CheckPlaneAgainstParents (int,TYPE_2__*) ;
 int CheckPlaneAgainstVolume (int,TYPE_2__*) ;
 int PSIDE_BACK ;
 int PSIDE_BOTH ;
 int PSIDE_FACING ;
 int PSIDE_FRONT ;
 int SFL_CURVE ;
 int SFL_TESTED ;
 int SURF_HINT ;
 scalar_t__ TEXINFO_NODE ;
 int TestBrushToPlanenum (TYPE_3__*,int,int*,int*,int*) ;
 int abs (int) ;
 int c_nonvis ;
 TYPE_4__* mapplanes ;
 int numthreads ;

side_t *SelectSplitSide (bspbrush_t *brushes, node_t *node)
{
 int value, bestvalue;
 bspbrush_t *brush, *test;
 side_t *side, *bestside;
 int i, pass, numpasses;
 int pnum;
 int s;
 int front, back, both, facing, splits;
 int bsplits;
 int epsilonbrush;
 qboolean hintsplit = 0;

 bestside = ((void*)0);
 bestvalue = -99999;





 numpasses = 2;
 for (pass = 0; pass < numpasses; pass++)
 {
  for (brush = brushes; brush; brush = brush->next)
  {





   for (i = 0; i < brush->numsides; i++)
   {
    side = brush->sides + i;


    if (!side->winding)
     continue;
    if (side->texinfo == TEXINFO_NODE)
     continue;
    if (side->flags & SFL_TESTED)
     continue;






    if ((side->flags & SFL_CURVE) && (pass < 1))
     continue;

    pnum = side->planenum;
    pnum &= ~1;

    if (!CheckPlaneAgainstVolume (pnum, node))
     continue;

    CheckPlaneAgainstParents (pnum, node);

    front = 0;
    back = 0;
    both = 0;
    facing = 0;
    splits = 0;
    epsilonbrush = 0;


    for (test = brushes; test; test = test->next)
    {
     s = TestBrushToPlanenum (test, pnum, &bsplits, &hintsplit, &epsilonbrush);

     splits += bsplits;



     test->testside = s;

     if (s & PSIDE_FACING) facing++;
     if (s & PSIDE_FRONT) front++;
     if (s & PSIDE_BACK) back++;
     if (s == PSIDE_BOTH) both++;
    }


    value = 5*facing - 5*splits - abs(front-back);


    if (mapplanes[pnum].type < 3)
     value+=5;

    value -= epsilonbrush * 1000;


    if (hintsplit && !(side->surf & SURF_HINT) )
     value = -9999999;




    if (value > bestvalue)
    {
     bestvalue = value;
     bestside = side;
     for (test = brushes; test ; test = test->next)
      test->side = test->testside;
    }
   }
  }



  if (bestside)
  {
   if (pass > 1)
   {
    if (numthreads == 1) c_nonvis++;
   }
   if (pass > 0) node->detail_seperator = 1;
   break;
  }
 }




 for (brush = brushes ; brush ; brush=brush->next)
 {
  for (i = 0; i < brush->numsides; i++)
  {
   brush->sides[i].flags &= ~SFL_TESTED;
  }
 }

 return bestside;
}
