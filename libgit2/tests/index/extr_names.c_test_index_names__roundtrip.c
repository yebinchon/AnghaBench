
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * theirs; int * ours; int * ancestor; } ;
typedef TYPE_1__ git_index_name_entry ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_index_clear (int ) ;
 int git_index_name_add (int ,char*,char*,char*) ;
 int git_index_name_entrycount (int ) ;
 TYPE_1__* git_index_name_get_byindex (int ,int) ;
 int git_index_read (int ,int) ;
 int git_index_write (int ) ;
 int repo_index ;
 scalar_t__ strcmp (int *,char*) ;

void test_index_names__roundtrip(void)
{
 const git_index_name_entry *conflict_name;

 cl_git_pass(git_index_name_add(repo_index, "ancestor", "ours", "theirs"));
 cl_git_pass(git_index_name_add(repo_index, "ancestor2", "ours2", ((void*)0)));
 cl_git_pass(git_index_name_add(repo_index, "ancestor3", ((void*)0), "theirs3"));

 cl_git_pass(git_index_write(repo_index));
 git_index_clear(repo_index);
 cl_assert(git_index_name_entrycount(repo_index) == 0);

 cl_git_pass(git_index_read(repo_index, 1));
 cl_assert(git_index_name_entrycount(repo_index) == 3);

 conflict_name = git_index_name_get_byindex(repo_index, 0);
 cl_assert(strcmp(conflict_name->ancestor, "ancestor") == 0);
 cl_assert(strcmp(conflict_name->ours, "ours") == 0);
 cl_assert(strcmp(conflict_name->theirs, "theirs") == 0);

 conflict_name = git_index_name_get_byindex(repo_index, 1);
 cl_assert(strcmp(conflict_name->ancestor, "ancestor2") == 0);
 cl_assert(strcmp(conflict_name->ours, "ours2") == 0);
 cl_assert(conflict_name->theirs == ((void*)0));

 conflict_name = git_index_name_get_byindex(repo_index, 2);
 cl_assert(strcmp(conflict_name->ancestor, "ancestor3") == 0);
 cl_assert(conflict_name->ours == ((void*)0));
 cl_assert(strcmp(conflict_name->theirs, "theirs3") == 0);
}
