
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int link (char const*,char const*) ;
 int p_unlink (char const*) ;
 int rename (char const*,char const*) ;

int p_rename(const char *from, const char *to)
{
 if (!link(from, to)) {
  p_unlink(from);
  return 0;
 }

 if (!rename(from, to))
  return 0;

 return -1;
}
