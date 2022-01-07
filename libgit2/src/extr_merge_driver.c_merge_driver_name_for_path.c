
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 scalar_t__ GIT_ATTR_IS_FALSE (char const*) ;
 scalar_t__ GIT_ATTR_IS_TRUE (char const*) ;
 scalar_t__ GIT_ATTR_IS_UNSPECIFIED (char const*) ;
 int git_attr_get (char const**,int *,int ,char const*,char*) ;
 char* merge_driver_name__binary ;
 char* merge_driver_name__text ;

__attribute__((used)) static int merge_driver_name_for_path(
 const char **out,
 git_repository *repo,
 const char *path,
 const char *default_driver)
{
 const char *value;
 int error;

 *out = ((void*)0);

 if ((error = git_attr_get(&value, repo, 0, path, "merge")) < 0)
  return error;


 if (GIT_ATTR_IS_TRUE(value))
  *out = merge_driver_name__text;


 else if (GIT_ATTR_IS_FALSE(value))
  *out = merge_driver_name__binary;

 else if (GIT_ATTR_IS_UNSPECIFIED(value) && default_driver)
  *out = default_driver;

 else if (GIT_ATTR_IS_UNSPECIFIED(value))
  *out = merge_driver_name__text;

 else
  *out = value;

 return 0;
}
