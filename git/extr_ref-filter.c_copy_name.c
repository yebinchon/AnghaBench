
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char*,int) ;
 char const* xmemdupz (char const*,int) ;
 char const* xstrdup (char*) ;

__attribute__((used)) static const char *copy_name(const char *buf)
{
 const char *cp;
 for (cp = buf; *cp && *cp != '\n'; cp++) {
  if (!strncmp(cp, " <", 2))
   return xmemdupz(buf, cp - buf);
 }
 return xstrdup("");
}
