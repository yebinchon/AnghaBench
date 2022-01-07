
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int append_oid_to_array ;
 int for_each_ref (int ,int *) ;
 int initialized_fetch_ref_tips ;
 int oid_array_append (int *,struct object_id*) ;
 int ref_tips_after_fetch ;
 int ref_tips_before_fetch ;

void check_for_new_submodule_commits(struct object_id *oid)
{
 if (!initialized_fetch_ref_tips) {
  for_each_ref(append_oid_to_array, &ref_tips_before_fetch);
  initialized_fetch_ref_tips = 1;
 }

 oid_array_append(&ref_tips_after_fetch, oid);
}
