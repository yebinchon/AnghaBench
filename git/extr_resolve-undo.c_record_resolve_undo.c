
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct resolve_undo_info* util; } ;
struct string_list {int strdup_strings; } ;
struct resolve_undo_info {int * mode; int * oid; } ;
struct index_state {struct string_list* resolve_undo; } ;
struct cache_entry {int ce_mode; int oid; int name; } ;


 int ce_stage (struct cache_entry*) ;
 int oidcpy (int *,int *) ;
 struct string_list_item* string_list_insert (struct string_list*,int ) ;
 void* xcalloc (int,int) ;

void record_resolve_undo(struct index_state *istate, struct cache_entry *ce)
{
 struct string_list_item *lost;
 struct resolve_undo_info *ui;
 struct string_list *resolve_undo;
 int stage = ce_stage(ce);

 if (!stage)
  return;

 if (!istate->resolve_undo) {
  resolve_undo = xcalloc(1, sizeof(*resolve_undo));
  resolve_undo->strdup_strings = 1;
  istate->resolve_undo = resolve_undo;
 }
 resolve_undo = istate->resolve_undo;
 lost = string_list_insert(resolve_undo, ce->name);
 if (!lost->util)
  lost->util = xcalloc(1, sizeof(*ui));
 ui = lost->util;
 oidcpy(&ui->oid[stage - 1], &ce->oid);
 ui->mode[stage - 1] = ce->ce_mode;
}
