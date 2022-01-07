
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {int magic; } ;
struct name_entry {int path; int mode; } ;
typedef enum interesting { ____Placeholder_interesting } interesting ;


 int PATHSPEC_ICASE ;
 int S_ISDIR (int ) ;
 int S_ISGITLINK (int ) ;
 int entry_not_interesting ;
 int ps_strncmp (struct pathspec_item const*,char const*,int ,int) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static int match_entry(const struct pathspec_item *item,
         const struct name_entry *entry, int pathlen,
         const char *match, int matchlen,
         enum interesting *never_interesting)
{
 int m = -1;

 if (item->magic & PATHSPEC_ICASE)
  *never_interesting = entry_not_interesting;
 else if (*never_interesting != entry_not_interesting) {
  m = strncmp(match, entry->path,
       (matchlen < pathlen) ? matchlen : pathlen);
  if (m < 0)
   return 0;
  *never_interesting = entry_not_interesting;
 }

 if (pathlen > matchlen)
  return 0;

 if (matchlen > pathlen) {
  if (match[pathlen] != '/')
   return 0;
  if (!S_ISDIR(entry->mode) && !S_ISGITLINK(entry->mode))
   return 0;
 }

 if (m == -1)




  m = ps_strncmp(item, match, entry->path, pathlen);






 if (!m)







  return 1;

 return 0;
}
