
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_repository ;
typedef int git_diff_options ;
struct TYPE_4__ {size_t patch_no; size_t total_patches; int author; int body; int summary; int id; int flags; } ;
typedef TYPE_1__ git_diff_format_email_options ;
typedef int git_diff ;
typedef int git_commit ;
typedef int git_buf ;


 TYPE_1__ GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT ;
 int assert (int ) ;
 int git_commit_author (int *) ;
 int git_commit_body (int *) ;
 int git_commit_id (int *) ;
 int git_commit_summary (int *) ;
 int git_diff__commit (int **,int *,int *,int const*) ;
 int git_diff_format_email (int *,int *,TYPE_1__*) ;
 int git_diff_free (int *) ;

int git_diff_commit_as_email(
 git_buf *out,
 git_repository *repo,
 git_commit *commit,
 size_t patch_no,
 size_t total_patches,
 uint32_t flags,
 const git_diff_options *diff_opts)
{
 git_diff *diff = ((void*)0);
 git_diff_format_email_options opts =
  GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT;
 int error;

 assert (out && repo && commit);

 opts.flags = flags;
 opts.patch_no = patch_no;
 opts.total_patches = total_patches;
 opts.id = git_commit_id(commit);
 opts.summary = git_commit_summary(commit);
 opts.body = git_commit_body(commit);
 opts.author = git_commit_author(commit);

 if ((error = git_diff__commit(&diff, repo, commit, diff_opts)) < 0)
  return error;

 error = git_diff_format_email(out, diff, &opts);

 git_diff_free(diff);
 return error;
}
