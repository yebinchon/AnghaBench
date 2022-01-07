
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char const) ;

__attribute__((used)) static size_t strcspn_escaped(const char *s, const char *stop)
{
 const char *i;

 for (i = s; *i; i++) {

  if (i[0] == '\\' && i[1]) {
   i++;
   continue;
  }

  if (strchr(stop, *i))
   break;
 }
 return i - s;
}
