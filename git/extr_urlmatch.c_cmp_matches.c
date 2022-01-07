
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urlmatch_item {scalar_t__ hostmatch_len; scalar_t__ pathmatch_len; scalar_t__ user_matched; } ;



__attribute__((used)) static int cmp_matches(const struct urlmatch_item *a,
         const struct urlmatch_item *b)
{
 if (a->hostmatch_len != b->hostmatch_len)
  return a->hostmatch_len < b->hostmatch_len ? -1 : 1;
 if (a->pathmatch_len != b->pathmatch_len)
  return a->pathmatch_len < b->pathmatch_len ? -1 : 1;
 if (a->user_matched != b->user_matched)
  return b->user_matched ? -1 : 1;
 return 0;
}
