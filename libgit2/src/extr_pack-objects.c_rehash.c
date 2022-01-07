
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_1__ git_pobject ;
struct TYPE_6__ {size_t nr_objects; int object_ix; TYPE_1__* object_list; } ;
typedef TYPE_2__ git_packbuilder ;


 int git_oidmap_clear (int ) ;
 scalar_t__ git_oidmap_set (int ,int *,TYPE_1__*) ;

__attribute__((used)) static int rehash(git_packbuilder *pb)
{
 git_pobject *po;
 size_t i;

 git_oidmap_clear(pb->object_ix);

 for (i = 0, po = pb->object_list; i < pb->nr_objects; i++, po++) {
  if (git_oidmap_set(pb->object_ix, &po->id, po) < 0)
   return -1;
 }

 return 0;
}
