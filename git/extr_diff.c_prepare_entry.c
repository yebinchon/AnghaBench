
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moved_entry {int * next_line; struct emitted_diff_symbol* es; int ent; } ;
struct emitted_diff_symbol {int len; int line; } ;
struct diff_options {unsigned int color_moved_ws_handling; TYPE_1__* emitted_symbols; } ;
struct TYPE_2__ {struct emitted_diff_symbol* buf; } ;


 unsigned int XDF_WHITESPACE_FLAGS ;
 int hashmap_entry_init (int *,unsigned int) ;
 unsigned int xdiff_hash_string (int ,int ,unsigned int) ;
 struct moved_entry* xmalloc (int) ;

__attribute__((used)) static struct moved_entry *prepare_entry(struct diff_options *o,
      int line_no)
{
 struct moved_entry *ret = xmalloc(sizeof(*ret));
 struct emitted_diff_symbol *l = &o->emitted_symbols->buf[line_no];
 unsigned flags = o->color_moved_ws_handling & XDF_WHITESPACE_FLAGS;
 unsigned int hash = xdiff_hash_string(l->line, l->len, flags);

 hashmap_entry_init(&ret->ent, hash);
 ret->es = l;
 ret->next_line = ((void*)0);

 return ret;
}
