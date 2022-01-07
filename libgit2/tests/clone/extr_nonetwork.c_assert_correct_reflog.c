
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_reflog_entry ;
typedef int git_reflog ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char const*) ;

__attribute__((used)) static void assert_correct_reflog(const char *name)
{
 git_reflog *log;
 const git_reflog_entry *entry;
 git_buf expected_message = GIT_BUF_INIT;

 git_buf_printf(&expected_message,
  "clone: from %s", cl_git_fixture_url("testrepo.git"));

 cl_git_pass(git_reflog_read(&log, g_repo, name));
 cl_assert_equal_i(1, git_reflog_entrycount(log));
 entry = git_reflog_entry_byindex(log, 0);
 cl_assert_equal_s(expected_message.ptr, git_reflog_entry_message(entry));

 git_reflog_free(log);

 git_buf_dispose(&expected_message);
}
