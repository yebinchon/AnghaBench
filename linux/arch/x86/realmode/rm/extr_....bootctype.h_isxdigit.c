
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (int) ;

__attribute__((used)) static inline int isxdigit(int ch)
{
 if (isdigit(ch))
  return 1;

 if ((ch >= 'a') && (ch <= 'f'))
  return 1;

 return (ch >= 'A') && (ch <= 'F');
}
