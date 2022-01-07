
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const CHAR_NULL ;
 char* error_texts ;

__attribute__((used)) static const char *
find_error_text(int n)
{
const char *s = error_texts;
for (; n > 0; n--)
  {
  while (*s++ != CHAR_NULL) {};
  if (*s == CHAR_NULL) return "Error text not found (please report)";
  }
return s;
}
