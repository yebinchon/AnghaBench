
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_index_entry ;
struct TYPE_2__ {int base; } ;


 int cl_git_pass (int ) ;
 int git_index_conflict_get (int const**,int const**,int const**,int ,char*) ;
 int git_merge_driver_register (char*,int *) ;
 int git_merge_driver_unregister (char*) ;
 int merge_branch () ;
 int repo_index ;
 int set_gitattributes_to (char*) ;
 TYPE_1__ test_driver_conflict_apply ;

void test_merge_driver__apply_can_conflict(void)
{
 const git_index_entry *ancestor, *ours, *theirs;

 cl_git_pass(git_merge_driver_register("conflict",
  &test_driver_conflict_apply.base));

    set_gitattributes_to("conflict");
    merge_branch();

 cl_git_pass(git_index_conflict_get(&ancestor, &ours, &theirs,
  repo_index, "automergeable.txt"));

 git_merge_driver_unregister("conflict");
}
