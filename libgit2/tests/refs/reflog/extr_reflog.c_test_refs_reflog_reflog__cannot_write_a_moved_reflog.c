
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reflog ;
typedef int git_reference ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_rename (int **,int *,char*,int ,int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int git_reflog_write (int *) ;

void test_refs_reflog_reflog__cannot_write_a_moved_reflog(void)
{
 git_reference *master, *new_master;
 git_buf master_log_path = GIT_BUF_INIT, moved_log_path = GIT_BUF_INIT;
 git_reflog *reflog;

 cl_git_pass(git_reference_lookup(&master, g_repo, "refs/heads/master"));
 cl_git_pass(git_reflog_read(&reflog, g_repo, "refs/heads/master"));

 cl_git_pass(git_reflog_write(reflog));

 cl_git_pass(git_reference_rename(&new_master, master, "refs/moved", 0, ((void*)0)));
 git_reference_free(master);

 cl_git_fail(git_reflog_write(reflog));

 git_reflog_free(reflog);
 git_reference_free(new_master);
 git_buf_dispose(&moved_log_path);
 git_buf_dispose(&master_log_path);
}
