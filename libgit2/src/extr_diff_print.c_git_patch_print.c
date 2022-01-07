
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef scalar_t__ git_diff_line_cb ;
typedef int git_buf ;
typedef int diff_print_info ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_FORMAT_PATCH ;
 int assert (int) ;
 int diff_print_info_init_frompatch (int *,int *,int *,int ,scalar_t__,void*) ;
 int diff_print_patch_binary ;
 int diff_print_patch_file ;
 int diff_print_patch_hunk ;
 int diff_print_patch_line ;
 int git_buf_dispose (int *) ;
 int git_error_set_after_callback_function (int,char*) ;
 int git_patch__invoke_callbacks (int *,int ,int ,int ,int ,int *) ;

int git_patch_print(
 git_patch *patch,
 git_diff_line_cb print_cb,
 void *payload)
{
 int error;
 git_buf temp = GIT_BUF_INIT;
 diff_print_info pi;

 assert(patch && print_cb);

 if (!(error = diff_print_info_init_frompatch(
  &pi, &temp, patch,
  GIT_DIFF_FORMAT_PATCH, print_cb, payload)))
 {
  error = git_patch__invoke_callbacks(
   patch,
   diff_print_patch_file, diff_print_patch_binary,
   diff_print_patch_hunk, diff_print_patch_line,
   &pi);

  if (error)
   git_error_set_after_callback_function(error, "git_patch_print");
 }

 git_buf_dispose(&temp);

 return error;
}
