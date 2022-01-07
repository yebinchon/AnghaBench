
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_reflog_entry ;
typedef int git_reflog ;
struct TYPE_5__ {int email; } ;


 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int connect_to_local_repository (int ) ;
 int * git_reflog_entry_byindex (int *,int ) ;
 TYPE_3__* git_reflog_entry_committer (int const*) ;
 int git_reflog_entry_message (int const*) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int git_remote_fetch (int ,TYPE_1__*,int *,int *) ;
 char* git_remote_url (int ) ;
 int remote ;
 int repo ;
 int sprintf (char*,char*,char*) ;

void test_network_remote_local__fetch_default_reflog_message(void)
{
 char *refspec_strings[] = {
  "master:remotes/sloppy/master",
 };
 git_strarray array = {
  refspec_strings,
  1,
 };

 git_reflog *log;
 const git_reflog_entry *entry;
 char expected_reflog_msg[1024];

 connect_to_local_repository(cl_fixture("testrepo.git"));

 cl_git_pass(git_remote_fetch(remote, &array, ((void*)0), ((void*)0)));

 cl_git_pass(git_reflog_read(&log, repo, "refs/remotes/sloppy/master"));
 cl_assert_equal_i(1, git_reflog_entrycount(log));
 entry = git_reflog_entry_byindex(log, 0);
 cl_assert_equal_s("foo@example.com", git_reflog_entry_committer(entry)->email);

 sprintf(expected_reflog_msg, "fetch %s", git_remote_url(remote));
 cl_assert_equal_s(expected_reflog_msg, git_reflog_entry_message(entry));

 git_reflog_free(log);
}
