
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; char* path; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef int git_diff ;


 char* DIFF_MODIFY_TWO_FILES ;
 int GIT_APPLY_LOCATION_BOTH ;
 int GIT_EAPPLYFAIL ;
 int cl_git_append2file (char*,char*) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_apply (int ,int *,int ,int *) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int repo ;
 int strlen (char const*) ;

void test_apply_both__index_must_match_workdir(void)
{
 git_diff *diff;
 git_index *index;
 git_index_entry idx_entry;

 const char *diff_file = DIFF_MODIFY_TWO_FILES;







 cl_git_append2file("merge-recursive/asparagus.txt",
     "This is a modification.\n");

 cl_git_pass(git_repository_index(&index, repo));

 memset(&idx_entry, 0, sizeof(git_index_entry));
 idx_entry.mode = 0100644;
 idx_entry.path = "asparagus.txt";
 cl_git_pass(git_oid_fromstr(&idx_entry.id, "06d3fefb8726ab1099acc76e02dfb85e034b2538"));
 cl_git_pass(git_index_add(index, &idx_entry));

 cl_git_pass(git_index_write(index));
 git_index_free(index);

 cl_git_pass(git_diff_from_buffer(&diff, diff_file, strlen(diff_file)));
 cl_git_fail_with(GIT_EAPPLYFAIL, git_apply(repo, diff, GIT_APPLY_LOCATION_BOTH, ((void*)0)));

 git_diff_free(diff);
}
