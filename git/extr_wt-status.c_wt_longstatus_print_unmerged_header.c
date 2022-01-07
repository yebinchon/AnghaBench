
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wt_status_change_data {int stagemask; } ;
struct TYPE_2__ {int nr; struct string_list_item* items; } ;
struct wt_status {scalar_t__ whence; int reference; int is_initial; int hints; TYPE_1__ change; } ;
struct string_list_item {struct wt_status_change_data* util; } ;


 scalar_t__ FROM_COMMIT ;
 int WT_STATUS_HEADER ;
 int _ (char*) ;
 char* color (int ,struct wt_status*) ;
 int status_printf_ln (struct wt_status*,char const*,int ,...) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void wt_longstatus_print_unmerged_header(struct wt_status *s)
{
 int i;
 int del_mod_conflict = 0;
 int both_deleted = 0;
 int not_deleted = 0;
 const char *c = color(WT_STATUS_HEADER, s);

 status_printf_ln(s, c, _("Unmerged paths:"));

 for (i = 0; i < s->change.nr; i++) {
  struct string_list_item *it = &(s->change.items[i]);
  struct wt_status_change_data *d = it->util;

  switch (d->stagemask) {
  case 0:
   break;
  case 1:
   both_deleted = 1;
   break;
  case 3:
  case 5:
   del_mod_conflict = 1;
   break;
  default:
   not_deleted = 1;
   break;
  }
 }

 if (!s->hints)
  return;
 if (s->whence != FROM_COMMIT)
  ;
 else if (!s->is_initial) {
  if (!strcmp(s->reference, "HEAD"))
   status_printf_ln(s, c,
      _("  (use \"git restore --staged <file>...\" to unstage)"));
  else
   status_printf_ln(s, c,
      _("  (use \"git restore --source=%s --staged <file>...\" to unstage)"),
      s->reference);
 } else
  status_printf_ln(s, c, _("  (use \"git rm --cached <file>...\" to unstage)"));

 if (!both_deleted) {
  if (!del_mod_conflict)
   status_printf_ln(s, c, _("  (use \"git add <file>...\" to mark resolution)"));
  else
   status_printf_ln(s, c, _("  (use \"git add/rm <file>...\" as appropriate to mark resolution)"));
 } else if (!del_mod_conflict && !not_deleted) {
  status_printf_ln(s, c, _("  (use \"git rm <file>...\" to mark resolution)"));
 } else {
  status_printf_ln(s, c, _("  (use \"git add/rm <file>...\" as appropriate to mark resolution)"));
 }
}
