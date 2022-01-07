
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static const char *find_wholine(const char *who, int wholen, const char *buf)
{
 const char *eol;
 while (*buf) {
  if (!strncmp(buf, who, wholen) &&
      buf[wholen] == ' ')
   return buf + wholen + 1;
  eol = strchr(buf, '\n');
  if (!eol)
   return "";
  eol++;
  if (*eol == '\n')
   return "";
  buf = eol;
 }
 return "";
}
