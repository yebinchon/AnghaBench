
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_crlf_t ;


 scalar_t__ GIT_ATTR_IS_FALSE (char const*) ;
 scalar_t__ GIT_ATTR_IS_TRUE (char const*) ;
 scalar_t__ GIT_ATTR_IS_UNSPECIFIED (char const*) ;
 int GIT_CRLF_AUTO ;
 int GIT_CRLF_BINARY ;
 int GIT_CRLF_TEXT ;
 int GIT_CRLF_TEXT_INPUT ;
 int GIT_CRLF_UNDEFINED ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static git_crlf_t check_crlf(const char *value)
{
 if (GIT_ATTR_IS_TRUE(value))
  return GIT_CRLF_TEXT;
 else if (GIT_ATTR_IS_FALSE(value))
  return GIT_CRLF_BINARY;
 else if (GIT_ATTR_IS_UNSPECIFIED(value))
  ;
 else if (strcmp(value, "input") == 0)
  return GIT_CRLF_TEXT_INPUT;
 else if (strcmp(value, "auto") == 0)
  return GIT_CRLF_AUTO;

 return GIT_CRLF_UNDEFINED;
}
