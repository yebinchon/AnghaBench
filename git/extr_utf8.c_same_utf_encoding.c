
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ istarts_with (char const*,char*) ;
 int strcasecmp (char const*,char const*) ;

__attribute__((used)) static int same_utf_encoding(const char *src, const char *dst)
{
 if (istarts_with(src, "utf") && istarts_with(dst, "utf")) {

  int i = (src[3] == '-' ? 4 : 3);
  int j = (dst[3] == '-' ? 4 : 3);
  return !strcasecmp(src+i, dst+j);
 }
 return 0;
}
