
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {int magic; size_t prefix; size_t nowildcard_len; char* match; } ;


 int GUARD_PATHSPEC (struct pathspec const*,int) ;
 int PATHSPEC_ATTR ;
 int PATHSPEC_EXCLUDE ;
 int PATHSPEC_FROMTOP ;
 int PATHSPEC_GLOB ;
 int PATHSPEC_ICASE ;
 int PATHSPEC_LITERAL ;
 int PATHSPEC_MAXDEPTH ;

__attribute__((used)) static size_t common_prefix_len(const struct pathspec *pathspec)
{
 int n;
 size_t max = 0;
 GUARD_PATHSPEC(pathspec,
         PATHSPEC_FROMTOP |
         PATHSPEC_MAXDEPTH |
         PATHSPEC_LITERAL |
         PATHSPEC_GLOB |
         PATHSPEC_ICASE |
         PATHSPEC_EXCLUDE |
         PATHSPEC_ATTR);

 for (n = 0; n < pathspec->nr; n++) {
  size_t i = 0, len = 0, item_len;
  if (pathspec->items[n].magic & PATHSPEC_EXCLUDE)
   continue;
  if (pathspec->items[n].magic & PATHSPEC_ICASE)
   item_len = pathspec->items[n].prefix;
  else
   item_len = pathspec->items[n].nowildcard_len;
  while (i < item_len && (n == 0 || i < max)) {
   char c = pathspec->items[n].match[i];
   if (c != pathspec->items[0].match[i])
    break;
   if (c == '/')
    len = i + 1;
   i++;
  }
  if (n == 0 || len < max) {
   max = len;
   if (!max)
    break;
  }
 }
 return max;
}
