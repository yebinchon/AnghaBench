
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote_create_options ;


 int git_remote_create_options_init (int *,unsigned int) ;

int git_remote_create_init_options(git_remote_create_options *opts, unsigned int version)
{
 return git_remote_create_options_init(opts, version);
}
