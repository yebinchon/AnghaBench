
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 size_t SSIZE_MAX ;
 int UV_E2BIG ;

ssize_t uv__strscpy(char* d, const char* s, size_t n) {
  size_t i;

  for (i = 0; i < n; i++)
    if ('\0' == (d[i] = s[i]))
      return i > SSIZE_MAX ? UV_E2BIG : (ssize_t) i;

  if (i == 0)
    return 0;

  d[--i] = '\0';

  return UV_E2BIG;
}
