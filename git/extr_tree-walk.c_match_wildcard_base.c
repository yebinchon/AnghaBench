
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {char* match; int nowildcard_len; } ;


 scalar_t__ basecmp (struct pathspec_item const*,char const*,char const*,int) ;
 int entry_interesting ;

__attribute__((used)) static int match_wildcard_base(const struct pathspec_item *item,
          const char *base, int baselen,
          int *matched)
{
 const char *match = item->match;

 int matchlen = item->nowildcard_len;

 if (baselen) {
  int dirlen;




  if (baselen >= matchlen) {
   *matched = matchlen;
   return !basecmp(item, base, match, matchlen);
  }

  dirlen = matchlen;
  while (dirlen && match[dirlen - 1] != '/')
   dirlen--;







  if (basecmp(item, base, match, baselen))
   return 0;
  *matched = baselen;
 } else
  *matched = 0;






 return entry_interesting;
}
