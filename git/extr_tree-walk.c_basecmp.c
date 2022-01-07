
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {int magic; int prefix; } ;


 int PATHSPEC_ICASE ;
 int ps_strncmp (struct pathspec_item const*,char const*,char const*,int) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int basecmp(const struct pathspec_item *item,
     const char *base, const char *match, int len)
{
 if (item->magic & PATHSPEC_ICASE) {
  int ret, n = len > item->prefix ? item->prefix : len;
  ret = strncmp(base, match, n);
  if (ret)
   return ret;
  base += n;
  match += n;
  len -= n;
 }
 return ps_strncmp(item, base, match, len);
}
