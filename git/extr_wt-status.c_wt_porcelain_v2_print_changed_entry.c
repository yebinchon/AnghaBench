
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status_change_data {char index_status; char worktree_status; char* rename_source; int mode_head; int mode_index; int mode_worktree; int rename_status; char* rename_score; int oid_index; int oid_head; } ;
struct wt_status {int fp; int prefix; scalar_t__ null_termination; } ;
struct string_list_item {char* string; struct wt_status_change_data* util; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int fprintf (int ,char*,char*,char*,int,int,int,char*,char*,...) ;
 char* oid_to_hex (int *) ;
 char* quote_path (char*,int ,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int wt_porcelain_v2_fix_up_changed (struct string_list_item*) ;
 int wt_porcelain_v2_submodule_state (struct wt_status_change_data*,char*) ;

__attribute__((used)) static void wt_porcelain_v2_print_changed_entry(
 struct string_list_item *it,
 struct wt_status *s)
{
 struct wt_status_change_data *d = it->util;
 struct strbuf buf = STRBUF_INIT;
 struct strbuf buf_from = STRBUF_INIT;
 const char *path = ((void*)0);
 const char *path_from = ((void*)0);
 char key[3];
 char submodule_token[5];
 char sep_char, eol_char;

 wt_porcelain_v2_fix_up_changed(it);
 wt_porcelain_v2_submodule_state(d, submodule_token);

 key[0] = d->index_status ? d->index_status : '.';
 key[1] = d->worktree_status ? d->worktree_status : '.';
 key[2] = 0;

 if (s->null_termination) {




  sep_char = '\0';
  eol_char = '\0';
  path = it->string;
  path_from = d->rename_source;
 } else {






  sep_char = '\t';
  eol_char = '\n';
  path = quote_path(it->string, s->prefix, &buf);
  if (d->rename_source)
   path_from = quote_path(d->rename_source, s->prefix, &buf_from);
 }

 if (path_from)
  fprintf(s->fp, "2 %s %s %06o %06o %06o %s %s %c%d %s%c%s%c",
    key, submodule_token,
    d->mode_head, d->mode_index, d->mode_worktree,
    oid_to_hex(&d->oid_head), oid_to_hex(&d->oid_index),
    d->rename_status, d->rename_score,
    path, sep_char, path_from, eol_char);
 else
  fprintf(s->fp, "1 %s %s %06o %06o %06o %s %s %s%c",
    key, submodule_token,
    d->mode_head, d->mode_index, d->mode_worktree,
    oid_to_hex(&d->oid_head), oid_to_hex(&d->oid_index),
    path, eol_char);

 strbuf_release(&buf);
 strbuf_release(&buf_from);
}
