
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_describe_options ;


 int git_describe_options_init (int *,unsigned int) ;

int git_describe_init_options(git_describe_options *opts, unsigned int version)
{
 return git_describe_options_init(opts, version);
}
