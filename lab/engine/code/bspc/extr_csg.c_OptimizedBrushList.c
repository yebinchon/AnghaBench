
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int numsides; struct TYPE_8__* next; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_7__ {int flags; } ;


 TYPE_2__* CopyBrush (TYPE_2__*) ;
 int SFL_VISIBLE ;

bspbrush_t *OptimizedBrushList (bspbrush_t *list)
{
 bspbrush_t *b;
 bspbrush_t *out, *newb;
 int i;


 out = ((void*)0);
 for (b=list ; b ; b=b->next)
 {
  for (i=0 ; i<b->numsides ; i++)
   if (b->sides[i].flags & SFL_VISIBLE)
    break;
  if (i == b->numsides)
   continue;
  newb = CopyBrush (b);
  newb->next = out;
  out = newb;
 }


 return out;
}
