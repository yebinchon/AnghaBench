
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_remote ;


 int git_remote_create_with_opts (int **,char const*,int *) ;

int git_remote_create_detached(git_remote **out, const char *url)
{
 return git_remote_create_with_opts(out, url, ((void*)0));
}
