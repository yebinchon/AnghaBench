
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int hints; } ;


 int WT_STATUS_HEADER ;
 char* _ (char*) ;
 char* color (int ,struct wt_status*) ;
 int status_printf_ln (struct wt_status*,char const*,char*,char const*) ;

__attribute__((used)) static void wt_longstatus_print_other_header(struct wt_status *s,
          const char *what,
          const char *how)
{
 const char *c = color(WT_STATUS_HEADER, s);
 status_printf_ln(s, c, "%s:", what);
 if (!s->hints)
  return;
 status_printf_ln(s, c, _("  (use \"git %s <file>...\" to include in what will be committed)"), how);
}
