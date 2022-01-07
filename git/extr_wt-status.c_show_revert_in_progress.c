
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revert_head_oid; } ;
struct wt_status {TYPE_1__ state; scalar_t__ hints; } ;


 int DEFAULT_ABBREV ;
 int _ (char*) ;
 int find_unique_abbrev (int *,int ) ;
 scalar_t__ has_unmerged (struct wt_status*) ;
 scalar_t__ is_null_oid (int *) ;
 int status_printf_ln (struct wt_status*,char const*,int ,...) ;
 int wt_longstatus_print_trailer (struct wt_status*) ;

__attribute__((used)) static void show_revert_in_progress(struct wt_status *s,
        const char *color)
{
 if (is_null_oid(&s->state.revert_head_oid))
  status_printf_ln(s, color,
   _("Revert currently in progress."));
 else
  status_printf_ln(s, color,
   _("You are currently reverting commit %s."),
   find_unique_abbrev(&s->state.revert_head_oid,
        DEFAULT_ABBREV));
 if (s->hints) {
  if (has_unmerged(s))
   status_printf_ln(s, color,
    _("  (fix conflicts and run \"git revert --continue\")"));
  else if (is_null_oid(&s->state.revert_head_oid))
   status_printf_ln(s, color,
    _("  (run \"git revert --continue\" to continue)"));
  else
   status_printf_ln(s, color,
    _("  (all conflicts fixed: run \"git revert --continue\")"));
  status_printf_ln(s, color,
   _("  (use \"git revert --skip\" to skip this patch)"));
  status_printf_ln(s, color,
   _("  (use \"git revert --abort\" to cancel the revert operation)"));
 }
 wt_longstatus_print_trailer(s);
}
