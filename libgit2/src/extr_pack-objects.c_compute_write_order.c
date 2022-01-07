
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ type; scalar_t__ filled; scalar_t__ tagged; TYPE_1__* delta; struct TYPE_14__* delta_sibling; int * delta_child; } ;
typedef TYPE_2__ git_pobject ;
struct TYPE_15__ {size_t nr_objects; TYPE_2__* object_list; int repo; } ;
typedef TYPE_3__ git_packbuilder ;
struct TYPE_13__ {TYPE_2__* delta_child; } ;


 int GIT_ERROR_INVALID ;
 scalar_t__ GIT_OBJECT_COMMIT ;
 scalar_t__ GIT_OBJECT_TAG ;
 scalar_t__ GIT_OBJECT_TREE ;
 int add_family_to_write_order (TYPE_2__**,size_t*,TYPE_2__*) ;
 int add_to_write_order (TYPE_2__**,size_t*,TYPE_2__*) ;
 int cb_tag_foreach ;
 int git__free (TYPE_2__**) ;
 TYPE_2__** git__mallocarray (size_t,int) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_tag_foreach (int ,int *,TYPE_3__*) ;

__attribute__((used)) static git_pobject **compute_write_order(git_packbuilder *pb)
{
 size_t i, wo_end, last_untagged;
 git_pobject **wo;

 if ((wo = git__mallocarray(pb->nr_objects, sizeof(*wo))) == ((void*)0))
  return ((void*)0);

 for (i = 0; i < pb->nr_objects; i++) {
  git_pobject *po = pb->object_list + i;
  po->tagged = 0;
  po->filled = 0;
  po->delta_child = ((void*)0);
  po->delta_sibling = ((void*)0);
 }






 for (i = pb->nr_objects; i > 0;) {
  git_pobject *po = &pb->object_list[--i];
  if (!po->delta)
   continue;

  po->delta_sibling = po->delta->delta_child;
  po->delta->delta_child = po;
 }




 if (git_tag_foreach(pb->repo, &cb_tag_foreach, pb) < 0) {
  git__free(wo);
  return ((void*)0);
 }





 for (i = wo_end = 0; i < pb->nr_objects; i++) {
  git_pobject *po = pb->object_list + i;
  if (po->tagged)
   break;
  add_to_write_order(wo, &wo_end, po);
 }
 last_untagged = i;




 for (; i < pb->nr_objects; i++) {
  git_pobject *po = pb->object_list + i;
  if (po->tagged)
   add_to_write_order(wo, &wo_end, po);
 }




 for (i = last_untagged; i < pb->nr_objects; i++) {
  git_pobject *po = pb->object_list + i;
  if (po->type != GIT_OBJECT_COMMIT &&
      po->type != GIT_OBJECT_TAG)
   continue;
  add_to_write_order(wo, &wo_end, po);
 }




 for (i = last_untagged; i < pb->nr_objects; i++) {
  git_pobject *po = pb->object_list + i;
  if (po->type != GIT_OBJECT_TREE)
   continue;
  add_to_write_order(wo, &wo_end, po);
 }




 for (i = last_untagged; i < pb->nr_objects; i++) {
  git_pobject *po = pb->object_list + i;
  if (!po->filled)
   add_family_to_write_order(wo, &wo_end, po);
 }

 if (wo_end != pb->nr_objects) {
  git__free(wo);
  git_error_set(GIT_ERROR_INVALID, "invalid write order");
  return ((void*)0);
 }

 return wo;
}
