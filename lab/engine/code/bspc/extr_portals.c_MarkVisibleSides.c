
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int headnode; } ;
typedef TYPE_2__ tree_t ;
struct TYPE_8__ {int numsides; TYPE_1__* original_sides; } ;
typedef TYPE_3__ mapbrush_t ;
struct TYPE_6__ {int flags; } ;


 int Log_Print (char*) ;
 int MarkVisibleSides_r (int ) ;
 int SFL_VISIBLE ;
 TYPE_3__* mapbrushes ;

void MarkVisibleSides(tree_t *tree, int startbrush, int endbrush)
{
 int i, j;
 mapbrush_t *mb;
 int numsides;

 Log_Print("--- MarkVisibleSides ---\n");


 for (i=startbrush ; i<endbrush ; i++)
 {
  mb = &mapbrushes[i];

  numsides = mb->numsides;
  for (j=0 ; j<numsides ; j++)
   mb->original_sides[j].flags &= ~SFL_VISIBLE;
 }


 MarkVisibleSides_r (tree->headnode);
}
