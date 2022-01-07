
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_format_t ;
typedef int git_diff ;
typedef int git_buf ;


 int assert (int) ;
 int git_buf_sanitize (int *) ;
 int git_diff_print (int *,int ,int ,int *) ;
 int git_diff_print_callback__to_buf ;

int git_diff_to_buf(git_buf *out, git_diff *diff, git_diff_format_t format)
{
 assert(out && diff);
 git_buf_sanitize(out);
 return git_diff_print(
  diff, format, git_diff_print_callback__to_buf, out);
}
