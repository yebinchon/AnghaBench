
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {int original; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 int strcmp (int ,int ) ;

int report_path_error(const char *ps_matched,
        const struct pathspec *pathspec)
{



 int num, errors = 0;
 for (num = 0; num < pathspec->nr; num++) {
  int other, found_dup;

  if (ps_matched[num])
   continue;






  for (found_dup = other = 0;
       !found_dup && other < pathspec->nr;
       other++) {
   if (other == num || !ps_matched[other])
    continue;
   if (!strcmp(pathspec->items[other].original,
        pathspec->items[num].original))



    found_dup = 1;
  }
  if (found_dup)
   continue;

  error(_("pathspec '%s' did not match any file(s) known to git"),
        pathspec->items[num].original);
  errors++;
 }
 return errors;
}
