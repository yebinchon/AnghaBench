
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_configmap_value ;


 scalar_t__ GIT_ATTR_IS_UNSPECIFIED (char const*) ;
 int GIT_EOL_CRLF ;
 int GIT_EOL_LF ;
 int GIT_EOL_UNSET ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static git_configmap_value check_eol(const char *value)
{
 if (GIT_ATTR_IS_UNSPECIFIED(value))
  ;
 else if (strcmp(value, "lf") == 0)
  return GIT_EOL_LF;
 else if (strcmp(value, "crlf") == 0)
  return GIT_EOL_CRLF;

 return GIT_EOL_UNSET;
}
