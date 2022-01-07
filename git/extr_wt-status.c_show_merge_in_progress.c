
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {scalar_t__ hints; } ;


 int _ (char*) ;
 scalar_t__ has_unmerged (struct wt_status*) ;
 int status_printf_ln (struct wt_status*,char const*,int ) ;
 int wt_longstatus_print_trailer (struct wt_status*) ;

__attribute__((used)) static void show_merge_in_progress(struct wt_status *s,
       const char *color)
{
 if (has_unmerged(s)) {
  status_printf_ln(s, color, _("You have unmerged paths."));
  if (s->hints) {
   status_printf_ln(s, color,
      _("  (fix conflicts and run \"git commit\")"));
   status_printf_ln(s, color,
      _("  (use \"git merge --abort\" to abort the merge)"));
  }
 } else {
  status_printf_ln(s, color,
   _("All conflicts fixed but you are still merging."));
  if (s->hints)
   status_printf_ln(s, color,
    _("  (use \"git commit\" to conclude merge)"));
 }
 wt_longstatus_print_trailer(s);
}
