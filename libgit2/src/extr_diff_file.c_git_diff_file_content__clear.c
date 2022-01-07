
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_file_content ;


 int git_diff_file_content__unload (int *) ;

void git_diff_file_content__clear(git_diff_file_content *fc)
{
 git_diff_file_content__unload(fc);


}
