
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* delta; } ;
typedef TYPE_1__ git_pobject ;


 int add_descendants_to_write_order (TYPE_1__**,size_t*,TYPE_1__*) ;

__attribute__((used)) static void add_family_to_write_order(git_pobject **wo, size_t *endp,
 git_pobject *po)
{
 git_pobject *root;

 for (root = po; root->delta; root = root->delta)
  ;
 add_descendants_to_write_order(wo, endp, root);
}
