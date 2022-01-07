
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;
 scalar_t__ strchr (char*,char const) ;

__attribute__((used)) static inline int invalid_value_char(const char ch)
{
 if (isalnum(ch) || strchr(",-_", ch))
  return 0;
 return -1;
}
