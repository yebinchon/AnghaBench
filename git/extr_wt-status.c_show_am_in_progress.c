
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ am_empty_patch; } ;
struct wt_status {TYPE_1__ state; scalar_t__ hints; } ;


 int _ (char*) ;
 int status_printf_ln (struct wt_status*,char const*,int ) ;
 int wt_longstatus_print_trailer (struct wt_status*) ;

__attribute__((used)) static void show_am_in_progress(struct wt_status *s,
    const char *color)
{
 status_printf_ln(s, color,
  _("You are in the middle of an am session."));
 if (s->state.am_empty_patch)
  status_printf_ln(s, color,
   _("The current patch is empty."));
 if (s->hints) {
  if (!s->state.am_empty_patch)
   status_printf_ln(s, color,
    _("  (fix conflicts and then run \"git am --continue\")"));
  status_printf_ln(s, color,
   _("  (use \"git am --skip\" to skip this patch)"));
  status_printf_ln(s, color,
   _("  (use \"git am --abort\" to restore the original branch)"));
 }
 wt_longstatus_print_trailer(s);
}
