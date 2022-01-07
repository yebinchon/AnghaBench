
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__tolower (char) ;

void git__strntolower(char *str, size_t len)
{
 size_t i;

 for (i = 0; i < len; ++i) {
  str[i] = (char)git__tolower(str[i]);
 }
}
