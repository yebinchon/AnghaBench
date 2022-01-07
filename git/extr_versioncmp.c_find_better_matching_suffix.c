
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct suffix_match {int len; int start; int conf_pos; } ;


 scalar_t__ starts_with (char const*,char const*) ;

__attribute__((used)) static void find_better_matching_suffix(const char *tagname, const char *suffix,
     int suffix_len, int start, int conf_pos,
     struct suffix_match *match)
{




 int end = match->len < suffix_len ? match->start : match->start-1;
 int i;
 for (i = start; i <= end; i++)
  if (starts_with(tagname + i, suffix)) {
   match->conf_pos = conf_pos;
   match->start = i;
   match->len = suffix_len;
   break;
  }
}
