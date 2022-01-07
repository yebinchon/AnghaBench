
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reflog_entry ;
typedef int git_reflog ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_REFLOG_DIR ;
 int cl_assert (int const*) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (int ,int ) ;
 int current_master_tip ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join_n (int *,char,int,int ,int ,char const*) ;
 int git_futils_readbuffer (int *,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_create (int **,int ,char const*,int *,int,char const*) ;
 int git_reference_free (int *) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char const*) ;
 int git_repository_path (int ) ;
 char* strchr (int ,char) ;
 int * strstr (int ,char*) ;

void test_refs_reflog_reflog__reading_a_reflog_with_invalid_format_succeeds(void)
{
 git_reflog *reflog;
 const char *refname = "refs/heads/newline";
 const char *refmessage =
  "Reflog*message with a newline and enough content after it to pass the GIT_REFLOG_SIZE_MIN check inside reflog_parse.";
 const git_reflog_entry *entry;
 git_reference *ref;
 git_oid id;
 git_buf logpath = GIT_BUF_INIT, logcontents = GIT_BUF_INIT;
 char *star;


 cl_git_pass(git_oid_fromstr(&id, current_master_tip));
 cl_git_pass(git_reference_create(&ref, g_repo, refname, &id, 1, refmessage));





 cl_git_pass(git_buf_join_n(&logpath, '/', 3, git_repository_path(g_repo), GIT_REFLOG_DIR, refname));
 cl_git_pass(git_futils_readbuffer(&logcontents, git_buf_cstr(&logpath)));
 cl_assert((star = strchr(git_buf_cstr(&logcontents), '*')) != ((void*)0));
 *star = '\n';
 cl_git_rewritefile(git_buf_cstr(&logpath), git_buf_cstr(&logcontents));





 cl_git_pass(git_futils_readbuffer(&logcontents, git_buf_cstr(&logpath)));
 cl_assert(strstr(git_buf_cstr(&logcontents), "Reflog\nmessage") != ((void*)0));

 cl_git_pass(git_reflog_read(&reflog, g_repo, refname));
 cl_assert(entry = git_reflog_entry_byindex(reflog, 0));
 cl_assert_equal_s(git_reflog_entry_message(entry), "Reflog");

 git_reference_free(ref);
 git_reflog_free(reflog);
 git_buf_dispose(&logpath);
 git_buf_dispose(&logcontents);
}
