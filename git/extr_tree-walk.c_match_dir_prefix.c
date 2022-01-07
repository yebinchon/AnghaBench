
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {int dummy; } ;


 scalar_t__ basecmp (struct pathspec_item const*,char const*,char const*,int) ;

__attribute__((used)) static int match_dir_prefix(const struct pathspec_item *item,
       const char *base,
       const char *match, int matchlen)
{
 if (basecmp(item, base, match, matchlen))
  return 0;





 if (!matchlen ||
     base[matchlen] == '/' ||
     match[matchlen - 1] == '/')
  return 1;


 return 0;
}
