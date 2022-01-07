
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_reflog ;
typedef int git_reference ;
struct TYPE_6__ {int member_0; } ;
struct TYPE_7__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_REFLOG_DIR ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_branch_create (int **,int ,char*,int *,int ) ;
 int git_branch_delete (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join3 (int *,char,char const*,int ,char*) ;
 int git_buf_joinpath (int *,char const*,char*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,TYPE_2__*) ;
 int git_oid_fromstr (TYPE_2__*,char*) ;
 int git_path_exists (int ) ;
 int git_reference_free (int *) ;
 int git_reflog_append (int *,TYPE_2__*,int *,char*) ;
 scalar_t__ git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char*) ;
 char* git_repository_commondir (int ) ;
 int git_signature_free (int *) ;
 int git_signature_now (int **,char*,char*) ;
 int repo ;

void test_refs_branches_delete__removes_empty_folders(void)
{
 const char *commondir = git_repository_commondir(repo);
 git_oid commit_id;
 git_commit *commit;
 git_reference *branch;

 git_reflog *log;
 git_oid oidzero = {{0}};
 git_signature *sig;

 git_buf ref_folder = GIT_BUF_INIT;
 git_buf reflog_folder = GIT_BUF_INIT;


 cl_git_pass(git_oid_fromstr(&commit_id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750"));
 cl_git_pass(git_commit_lookup(&commit, repo, &commit_id));
 cl_git_pass(git_branch_create(&branch, repo, "some/deep/ref", commit, 0));
 git_commit_free(commit);


 cl_git_pass(git_signature_now(&sig, "Me", "user@example.com"));
 cl_git_pass(git_reflog_read(&log, repo, "refs/heads/some/deep/ref"));
 cl_git_pass(git_reflog_append(log, &oidzero, sig, "message"));
 cl_assert(git_reflog_entrycount(log) > 0);
 git_signature_free(sig);
 git_reflog_free(log);

 cl_git_pass(git_buf_joinpath(&ref_folder, commondir, "refs/heads/some/deep"));
 cl_git_pass(git_buf_join3(&reflog_folder, '/', commondir, GIT_REFLOG_DIR, "refs/heads/some/deep"));

 cl_assert(git_path_exists(git_buf_cstr(&ref_folder)) == 1);
 cl_assert(git_path_exists(git_buf_cstr(&reflog_folder)) == 1);

 cl_git_pass(git_branch_delete(branch));

 cl_assert(git_path_exists(git_buf_cstr(&ref_folder)) == 0);
 cl_assert(git_path_exists(git_buf_cstr(&reflog_folder)) == 0);

 git_reference_free(branch);
 git_buf_dispose(&ref_folder);
 git_buf_dispose(&reflog_folder);
}
