
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_merge_file_input ;


 int git_merge_file_input_init (int *,unsigned int) ;

int git_merge_file_init_input(git_merge_file_input *input, unsigned int version)
{
 return git_merge_file_input_init(input, version);
}
