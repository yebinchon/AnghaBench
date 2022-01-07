
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_MERGE_HEAD_FILE ;
 int THEIRS_SIMPLE_OID ;
 int annotated_commit_foreach_cb ;
 int cl_assert (int) ;
 int cl_git_fail (int) ;
 int git_repository_mergehead_foreach (int ,int ,int *) ;
 int repo ;
 int write_file_contents (int ,int ) ;

void test_merge_workdir_setup__head_foreach_nonewline(void)
{
 int error;

 write_file_contents(GIT_MERGE_HEAD_FILE, THEIRS_SIMPLE_OID);

 cl_git_fail((error = git_repository_mergehead_foreach(repo,
  annotated_commit_foreach_cb, ((void*)0))));
 cl_assert(error == -1);
}
