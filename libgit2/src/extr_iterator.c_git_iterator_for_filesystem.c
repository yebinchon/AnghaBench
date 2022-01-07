
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_TYPE_FS ;
 int iterator_for_filesystem (int **,int *,char const*,int *,int *,int ,int *) ;

int git_iterator_for_filesystem(
 git_iterator **out,
 const char *root,
 git_iterator_options *options)
{
 return iterator_for_filesystem(out,
  ((void*)0), root, ((void*)0), ((void*)0), GIT_ITERATOR_TYPE_FS, options);
}
