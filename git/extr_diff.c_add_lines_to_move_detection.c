
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct moved_entry {int ent; struct moved_entry* next_line; TYPE_1__* es; } ;
struct hashmap {int dummy; } ;
struct diff_options {int color_moved_ws_handling; TYPE_2__* emitted_symbols; } ;
struct TYPE_6__ {int s; } ;
struct TYPE_5__ {int nr; TYPE_3__* buf; } ;
struct TYPE_4__ {int s; } ;


 int COLOR_MOVED_WS_ALLOW_INDENTATION_CHANGE ;


 int fill_es_indent_data (TYPE_3__*) ;
 int hashmap_add (struct hashmap*,int *) ;
 struct moved_entry* prepare_entry (struct diff_options*,int) ;

__attribute__((used)) static void add_lines_to_move_detection(struct diff_options *o,
     struct hashmap *add_lines,
     struct hashmap *del_lines)
{
 struct moved_entry *prev_line = ((void*)0);

 int n;
 for (n = 0; n < o->emitted_symbols->nr; n++) {
  struct hashmap *hm;
  struct moved_entry *key;

  switch (o->emitted_symbols->buf[n].s) {
  case 128:
   hm = add_lines;
   break;
  case 129:
   hm = del_lines;
   break;
  default:
   prev_line = ((void*)0);
   continue;
  }

  if (o->color_moved_ws_handling &
      COLOR_MOVED_WS_ALLOW_INDENTATION_CHANGE)
   fill_es_indent_data(&o->emitted_symbols->buf[n]);
  key = prepare_entry(o, n);
  if (prev_line && prev_line->es->s == o->emitted_symbols->buf[n].s)
   prev_line->next_line = key;

  hashmap_add(hm, &key->ent);
  prev_line = key;
 }
}
