
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S_ISDIR (int) ;
 int memcmp (char const*,char const*,int) ;

int df_name_compare(const char *name1, int len1, int mode1,
      const char *name2, int len2, int mode2)
{
 int len = len1 < len2 ? len1 : len2, cmp;
 unsigned char c1, c2;

 cmp = memcmp(name1, name2, len);
 if (cmp)
  return cmp;

 if (len1 == len2)
  return 0;
 c1 = name1[len];
 if (!c1 && S_ISDIR(mode1))
  c1 = '/';
 c2 = name2[len];
 if (!c2 && S_ISDIR(mode2))
  c2 = '/';
 if (c1 == '/' && !c2)
  return 0;
 if (c2 == '/' && !c1)
  return 0;
 return c1 - c2;
}
