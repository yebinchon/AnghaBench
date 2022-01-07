
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ git__strntol32 (scalar_t__*,char const*,int ,char const**,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int try_parse_numeric(int *n, const char *curly_braces_content)
{
 int32_t content;
 const char *end_ptr;

 if (git__strntol32(&content, curly_braces_content, strlen(curly_braces_content),
      &end_ptr, 10) < 0)
  return -1;

 if (*end_ptr != '\0')
  return -1;

 *n = (int)content;
 return 0;
}
