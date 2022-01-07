
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;
typedef int FILE ;


 int GIT_DIFF_FORMAT_RAW ;
 int cl_git_pass (int ) ;
 int git_diff_print (int *,int ,int ,int *) ;
 int git_diff_print_callback__to_file_handle ;
 int * stderr ;

void diff_print_raw(FILE *fp, git_diff *diff)
{
 cl_git_pass(
  git_diff_print(diff, GIT_DIFF_FORMAT_RAW,
   git_diff_print_callback__to_file_handle, fp ? fp : stderr));
}
