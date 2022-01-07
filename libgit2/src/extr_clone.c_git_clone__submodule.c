
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_clone_options ;


 int git__clone (int **,char const*,char const*,int const*,int) ;

int git_clone__submodule(
 git_repository **out,
 const char *url,
 const char *local_path,
 const git_clone_options *_options)
{
 return git__clone(out, url, local_path, _options, 1);
}
