
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ambiguous_path(const char *path, int len)
{
 int slash = 1;
 int cnt;

 for (cnt = 0; cnt < len; cnt++) {
  switch (*path++) {
  case '\0':
   break;
  case '/':
   if (slash)
    break;
   slash = 1;
   continue;
  case '.':
   continue;
  default:
   slash = 0;
   continue;
  }
  break;
 }
 return slash;
}
