
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * git_diff_line_cb ;
typedef int * git_diff_hunk_cb ;
typedef int git_diff_format_t ;
typedef int * git_diff_file_cb ;
typedef int * git_diff_binary_cb ;
typedef int git_diff ;
typedef int git_buf ;
typedef int diff_print_info ;


 int GIT_BUF_INIT ;





 int GIT_ERROR_INVALID ;
 int diff_print_info_init_fromdiff (int *,int *,int *,int ,int *,void*) ;
 int * diff_print_one_name_only ;
 int * diff_print_one_name_status ;
 int * diff_print_one_raw ;
 int * diff_print_patch_binary ;
 int * diff_print_patch_file ;
 int * diff_print_patch_hunk ;
 int * diff_print_patch_line ;
 int git_buf_dispose (int *) ;
 int git_diff_foreach (int *,int *,int *,int *,int *,int *) ;
 int git_error_set (int ,char*,int ) ;
 int git_error_set_after_callback_function (int,char*) ;

int git_diff_print(
 git_diff *diff,
 git_diff_format_t format,
 git_diff_line_cb print_cb,
 void *payload)
{
 int error;
 git_buf buf = GIT_BUF_INIT;
 diff_print_info pi;
 git_diff_file_cb print_file = ((void*)0);
 git_diff_binary_cb print_binary = ((void*)0);
 git_diff_hunk_cb print_hunk = ((void*)0);
 git_diff_line_cb print_line = ((void*)0);

 switch (format) {
 case 130:
  print_file = diff_print_patch_file;
  print_binary = diff_print_patch_binary;
  print_hunk = diff_print_patch_hunk;
  print_line = diff_print_patch_line;
  break;
 case 129:
  print_file = diff_print_patch_file;
  break;
 case 128:
  print_file = diff_print_one_raw;
  break;
 case 132:
  print_file = diff_print_one_name_only;
  break;
 case 131:
  print_file = diff_print_one_name_status;
  break;
 default:
  git_error_set(GIT_ERROR_INVALID, "unknown diff output format (%d)", format);
  return -1;
 }

 if (!(error = diff_print_info_init_fromdiff(
   &pi, &buf, diff, format, print_cb, payload))) {
  error = git_diff_foreach(
   diff, print_file, print_binary, print_hunk, print_line, &pi);

  if (error)
   git_error_set_after_callback_function(error, "git_diff_print");
 }

 git_buf_dispose(&buf);

 return error;
}
