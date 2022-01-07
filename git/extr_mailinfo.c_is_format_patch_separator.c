
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strlen (char const*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int is_format_patch_separator(const char *line, int len)
{
 static const char SAMPLE[] =
  "From e6807f3efca28b30decfecb1732a56c7db1137ee Mon Sep 17 00:00:00 2001\n";
 const char *cp;

 if (len != strlen(SAMPLE))
  return 0;
 if (!skip_prefix(line, "From ", &cp))
  return 0;
 if (strspn(cp, "0123456789abcdef") != 40)
  return 0;
 cp += 40;
 return !memcmp(SAMPLE + (cp - line), cp, strlen(SAMPLE) - (cp - line));
}
