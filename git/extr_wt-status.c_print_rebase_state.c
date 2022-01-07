
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int onto; scalar_t__ branch; } ;
struct wt_status {TYPE_1__ state; } ;


 int _ (char*) ;
 int status_printf_ln (struct wt_status*,char const*,int ,...) ;

__attribute__((used)) static void print_rebase_state(struct wt_status *s,
          const char *color)
{
 if (s->state.branch)
  status_printf_ln(s, color,
     _("You are currently rebasing branch '%s' on '%s'."),
     s->state.branch,
     s->state.onto);
 else
  status_printf_ln(s, color,
     _("You are currently rebasing."));
}
