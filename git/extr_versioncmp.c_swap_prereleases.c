
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct suffix_match {int member_0; int member_1; int member_2; int conf_pos; } ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct TYPE_3__ {char* string; } ;


 int find_better_matching_suffix (char const*,char const*,int,int,int,struct suffix_match*) ;
 TYPE_2__* prereleases ;
 int strlen (char const*) ;

__attribute__((used)) static int swap_prereleases(const char *s1,
       const char *s2,
       int off,
       int *diff)
{
 int i;
 struct suffix_match match1 = { -1, off, -1 };
 struct suffix_match match2 = { -1, off, -1 };

 for (i = 0; i < prereleases->nr; i++) {
  const char *suffix = prereleases->items[i].string;
  int start, suffix_len = strlen(suffix);
  if (suffix_len < off)
   start = off - suffix_len;
  else
   start = 0;
  find_better_matching_suffix(s1, suffix, suffix_len, start,
         i, &match1);
  find_better_matching_suffix(s2, suffix, suffix_len, start,
         i, &match2);
 }
 if (match1.conf_pos == -1 && match2.conf_pos == -1)
  return 0;
 if (match1.conf_pos == match2.conf_pos)



  return 0;

 if (match1.conf_pos >= 0 && match2.conf_pos >= 0)
  *diff = match1.conf_pos - match2.conf_pos;
 else if (match1.conf_pos >= 0)
  *diff = -1;
 else
  *diff = 1;
 return 1;
}
