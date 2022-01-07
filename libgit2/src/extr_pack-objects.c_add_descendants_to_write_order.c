
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* delta_sibling; struct TYPE_6__* delta; struct TYPE_6__* delta_child; } ;
typedef TYPE_1__ git_pobject ;


 int add_to_write_order (TYPE_1__**,size_t*,TYPE_1__*) ;

__attribute__((used)) static void add_descendants_to_write_order(git_pobject **wo, size_t *endp,
 git_pobject *po)
{
 int add_to_order = 1;
 while (po) {
  if (add_to_order) {
   git_pobject *s;

   add_to_write_order(wo, endp, po);

   for (s = po->delta_sibling; s; s = s->delta_sibling) {
    add_to_write_order(wo, endp, s);
   }
  }

  if (po->delta_child) {
   add_to_order = 1;
   po = po->delta_child;
  } else {
   add_to_order = 0;

   if (po->delta_sibling) {
    po = po->delta_sibling;
    continue;
   }

   po = po->delta;
   while (po && !po->delta_sibling) {


    po = po->delta;
   }
   if (!po) {

    return;
   }

   po = po->delta_sibling;
  }
 };
}
