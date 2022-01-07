
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ same_utf_encoding (char*,char const*) ;

int is_encoding_utf8(const char *name)
{
 if (!name)
  return 1;
 if (same_utf_encoding("utf-8", name))
  return 1;
 return 0;
}
