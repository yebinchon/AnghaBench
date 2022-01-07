
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reflog ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_config ;
struct TYPE_2__ {int msg; } ;


 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_create (int **,int ,char*,int *,int,char*) ;
 int git_reference_free (int *) ;
 TYPE_1__* git_reflog_entry_byindex (int *,int ) ;
 int git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 int git_repository_config (int **,int ) ;

void test_refs_reflog_reflog__logallrefupdates_bare_set_always(void)
{
 git_config *config;
 git_reference *ref;
 git_reflog *log;
 git_oid id;

 cl_git_pass(git_repository_config(&config, g_repo));
 cl_git_pass(git_config_set_string(config, "core.logallrefupdates", "always"));
 git_config_free(config);

 git_oid_fromstr(&id, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 cl_git_pass(git_reference_create(&ref, g_repo, "refs/bork", &id, 1, "message"));

 cl_git_pass(git_reflog_read(&log, g_repo, "refs/bork"));
 cl_assert_equal_i(1, git_reflog_entrycount(log));
 cl_assert_equal_s("message", git_reflog_entry_byindex(log, 0)->msg);

 git_reflog_free(log);
 git_reference_free(ref);
}
