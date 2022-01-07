
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int patch_no; int total_patches; int summary; int author; int id; } ;
typedef TYPE_1__ git_diff_format_email_options ;
typedef int git_diff ;
typedef int git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 TYPE_1__ GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (int *) ;
 int git_commit_author (int *) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_summary (int *) ;
 int git_diff__commit (int **,int ,int *,int *) ;
 int git_diff_commit_as_email (int *,int ,int *,int,int,int ,int *) ;
 int git_diff_format_email (int *,int *,TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int repo ;

void test_diff_format_email__invalid_no(void)
{
 git_oid oid;
 git_commit *commit = ((void*)0);
 git_diff *diff = ((void*)0);
 git_diff_format_email_options opts = GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT;
 git_buf buf = GIT_BUF_INIT;

 git_oid_fromstr(&oid, "9264b96c6d104d0e07ae33d3007b6a48246c6f92");

 cl_git_pass(git_commit_lookup(&commit, repo, &oid));

 opts.id = git_commit_id(commit);
 opts.author = git_commit_author(commit);
 opts.summary = git_commit_summary(commit);
 opts.patch_no = 2;
 opts.total_patches = 1;

 cl_git_pass(git_diff__commit(&diff, repo, commit, ((void*)0)));
 cl_git_fail(git_diff_format_email(&buf, diff, &opts));
 cl_git_fail(git_diff_commit_as_email(&buf, repo, commit, 2, 1, 0, ((void*)0)));
 cl_git_fail(git_diff_commit_as_email(&buf, repo, commit, 0, 0, 0, ((void*)0)));

 git_diff_free(diff);
 git_commit_free(commit);
 git_buf_dispose(&buf);
}
