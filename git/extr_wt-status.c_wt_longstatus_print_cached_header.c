
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {scalar_t__ whence; int reference; int is_initial; int hints; } ;


 scalar_t__ FROM_COMMIT ;
 int WT_STATUS_HEADER ;
 int _ (char*) ;
 char* color (int ,struct wt_status*) ;
 int status_printf_ln (struct wt_status*,char const*,int ,...) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void wt_longstatus_print_cached_header(struct wt_status *s)
{
 const char *c = color(WT_STATUS_HEADER, s);

 status_printf_ln(s, c, _("Changes to be committed:"));
 if (!s->hints)
  return;
 if (s->whence != FROM_COMMIT)
  ;
 else if (!s->is_initial) {
  if (!strcmp(s->reference, "HEAD"))
   status_printf_ln(s, c
      , _("  (use \"git restore --staged <file>...\" to unstage)"));
  else
   status_printf_ln(s, c,
      _("  (use \"git restore --source=%s --staged <file>...\" to unstage)"),
      s->reference);
 } else
  status_printf_ln(s, c, _("  (use \"git rm --cached <file>...\" to unstage)"));
}
