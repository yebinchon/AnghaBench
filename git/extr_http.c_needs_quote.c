
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int needs_quote(int ch)
{
 if (((ch >= 'A') && (ch <= 'Z'))
   || ((ch >= 'a') && (ch <= 'z'))
   || ((ch >= '0') && (ch <= '9'))
   || (ch == '/')
   || (ch == '-')
   || (ch == '.'))
  return 0;
 return 1;
}
