
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_proxy_options ;


 int git_proxy_options_init (int *,unsigned int) ;

int git_proxy_init_options(git_proxy_options *opts, unsigned int version)
{
 return git_proxy_options_init(opts, version);
}
