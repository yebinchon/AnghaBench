
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_6__ {int base; } ;


 int automergeable_id ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_string (int ,char*,char*) ;
 TYPE_1__* git_index_get_bypath (int ,char*,int ) ;
 int git_merge_driver_register (char*,int *) ;
 int git_merge_driver_unregister (char*) ;
 int merge_branch () ;
 int repo ;
 int repo_index ;
 TYPE_2__ test_driver_defer_apply ;

void test_merge_driver__mergedefault_deferring_falls_back_to_text(void)
{
 const git_index_entry *idx;

 cl_git_pass(git_merge_driver_register("defer",
  &test_driver_defer_apply.base));

 cl_repo_set_string(repo, "merge.default", "defer");
 merge_branch();

 cl_assert((idx = git_index_get_bypath(repo_index, "automergeable.txt", 0)));
 cl_assert_equal_oid(&automergeable_id, &idx->id);

 git_merge_driver_unregister("defer");
}
