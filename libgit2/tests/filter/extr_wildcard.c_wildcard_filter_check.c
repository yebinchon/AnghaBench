
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_source ;
typedef int const git_filter ;


 int GIT_ERROR_CHECK_ALLOC (void*) ;
 int GIT_PASSTHROUGH ;
 int GIT_UNUSED (int const*) ;
 void* git__strdup (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int wildcard_filter_check(
 git_filter *self,
 void **payload,
 const git_filter_source *src,
 const char **attr_values)
{
 GIT_UNUSED(self);
 GIT_UNUSED(src);

 if (strcmp(attr_values[0], "wcflip") == 0 ||
  strcmp(attr_values[0], "wcreverse") == 0) {
  *payload = git__strdup(attr_values[0]);
  GIT_ERROR_CHECK_ALLOC(*payload);
  return 0;
 }

 return GIT_PASSTHROUGH;
}
