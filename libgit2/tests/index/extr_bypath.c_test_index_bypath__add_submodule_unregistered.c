
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; int id; } ;
typedef TYPE_1__ git_index_entry ;


 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int g_idx ;
 int git_index_add_bypath (int ,char const*) ;
 TYPE_1__* git_index_get_bypath (int ,char const*,int ) ;
 int git_oid_tostr_s (int *) ;

void test_index_bypath__add_submodule_unregistered(void)
{
 const char *sm_name = "not-submodule";
 const char *sm_head = "68e92c611b80ee1ed8f38314ff9577f0d15b2444";
 const git_index_entry *entry;

 cl_git_pass(git_index_add_bypath(g_idx, sm_name));

 cl_assert(entry = git_index_get_bypath(g_idx, sm_name, 0));
 cl_assert_equal_s(sm_head, git_oid_tostr_s(&entry->id));
 cl_assert_equal_s(sm_name, entry->path);
}
