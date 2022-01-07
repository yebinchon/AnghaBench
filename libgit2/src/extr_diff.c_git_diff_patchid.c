
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch_id_args {int first_file; int ctx; int result; } ;
typedef int git_oid ;
typedef int git_diff_patchid_options ;
typedef int git_diff ;
typedef int args ;


 int GIT_DIFF_PATCHID_OPTIONS_VERSION ;
 int GIT_ERROR_CHECK_VERSION (int *,int ,char*) ;
 int file_cb ;
 int flush_hunk (int *,int *) ;
 int git_diff_foreach (int *,int ,int *,int *,int ,struct patch_id_args*) ;
 int git_hash_ctx_cleanup (int *) ;
 int git_hash_ctx_init (int *) ;
 int git_oid_cpy (int *,int *) ;
 int memset (struct patch_id_args*,int ,int) ;
 int patchid_line_cb ;

int git_diff_patchid(git_oid *out, git_diff *diff, git_diff_patchid_options *opts)
{
 struct patch_id_args args;
 int error;

 GIT_ERROR_CHECK_VERSION(
  opts, GIT_DIFF_PATCHID_OPTIONS_VERSION, "git_diff_patchid_options");

 memset(&args, 0, sizeof(args));
 args.first_file = 1;
 if ((error = git_hash_ctx_init(&args.ctx)) < 0)
  goto out;

 if ((error = git_diff_foreach(diff, file_cb, ((void*)0), ((void*)0), patchid_line_cb, &args)) < 0)
  goto out;

 if ((error = (flush_hunk(&args.result, &args.ctx))) < 0)
  goto out;

 git_oid_cpy(out, &args.result);

out:
 git_hash_ctx_cleanup(&args.ctx);
 return error;
}
