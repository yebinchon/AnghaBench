
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
typedef double vec_t ;
typedef int qboolean ;
struct TYPE_10__ {int type; float dist; int normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_11__ {float* mins; float* maxs; int numsides; TYPE_1__* sides; } ;
typedef TYPE_4__ bspbrush_t ;
struct TYPE_8__ {int planenum; int flags; scalar_t__ texinfo; int surf; TYPE_2__* winding; } ;


 int BoxOnPlaneSide (float*,float*,TYPE_3__*) ;
 double DotProduct (int ,int ) ;
 int Error (char*) ;
 int MAX_MAPFILE_PLANES ;
 float PLANESIDE_EPSILON ;
 int PSIDE_BACK ;
 int PSIDE_BOTH ;
 int PSIDE_FACING ;
 int PSIDE_FRONT ;
 int SFL_TESTED ;
 int SFL_VISIBLE ;
 int SURF_HINT ;
 int SURF_SKIP ;
 scalar_t__ TEXINFO_NODE ;
 TYPE_3__* mapplanes ;

int TestBrushToPlanenum (bspbrush_t *brush, int planenum,
       int *numsplits, qboolean *hintsplit, int *epsilonbrush)
{
 int i, j, num;
 plane_t *plane;
 int s = 0;
 winding_t *w;
 vec_t d, d_front, d_back;
 int front, back;
 int type;
 float dist;

 *numsplits = 0;
 *hintsplit = 0;

 plane = &mapplanes[planenum];
 {


  for (i = 0; i < brush->numsides; i++)
  {
   num = brush->sides[i].planenum;
   if (num >= MAX_MAPFILE_PLANES) Error ("bad planenum");
   if (num == planenum)
   {

    brush->sides[i].flags |= SFL_TESTED;
    return PSIDE_BACK|PSIDE_FACING;
   }
   if (num == (planenum ^ 1) )
   {

    brush->sides[i].flags |= SFL_TESTED;
    return PSIDE_FRONT|PSIDE_FACING;
   }
  }


  s = BoxOnPlaneSide (brush->mins, brush->maxs, plane);

  if (s != PSIDE_BOTH) return s;
 }


 d_front = d_back = 0;

 for (i = 0; i < brush->numsides; i++)
 {
  if (brush->sides[i].texinfo == TEXINFO_NODE)
   continue;
  if (!(brush->sides[i].flags & SFL_VISIBLE))
   continue;
  w = brush->sides[i].winding;
  if (!w) continue;
  front = back = 0;
  for (j = 0; j < w->numpoints; j++)
  {
   d = DotProduct(w->p[j], plane->normal) - plane->dist;
   if (d > d_front) d_front = d;
   if (d < d_back) d_back = d;
   if (d > 0.1)
    front = 1;
   if (d < -0.1)
    back = 1;
  }
  if (front && back)
  {
   if ( !(brush->sides[i].surf & SURF_SKIP) )
   {
    (*numsplits)++;
    if (brush->sides[i].surf & SURF_HINT)
    {
     *hintsplit = 1;
    }
   }
  }
 }

 if ( (d_front > 0.0 && d_front < 1.0)
  || (d_back < 0.0 && d_back > -1.0) )
  (*epsilonbrush)++;
 return s;
}
