
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int git_repository ;


 int git_attr_get_many_with_session (char const**,int *,int *,int ,char const*,size_t,char const**) ;

int git_attr_get_many(
 const char **values,
 git_repository *repo,
 uint32_t flags,
 const char *pathname,
 size_t num_attr,
 const char **names)
{
 return git_attr_get_many_with_session(
  values, repo, ((void*)0), flags, pathname, num_attr, names);
}
