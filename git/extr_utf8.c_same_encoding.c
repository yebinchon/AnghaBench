
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ same_utf_encoding (char const*,char const*) ;
 int strcasecmp (char const*,char const*) ;

int same_encoding(const char *src, const char *dst)
{
 static const char utf8[] = "UTF-8";

 if (!src)
  src = utf8;
 if (!dst)
  dst = utf8;
 if (same_utf_encoding(src, dst))
  return 1;
 return !strcasecmp(src, dst);
}
