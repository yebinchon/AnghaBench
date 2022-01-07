
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {size_t len; } ;
struct todo_list {int nr; int alloc; struct todo_item* items; struct strbuf buf; } ;
struct todo_item {int command; size_t offset_in_buf; size_t arg_offset; size_t arg_len; } ;
struct string_list {int nr; TYPE_1__* items; } ;
typedef enum todo_command { ____Placeholder_todo_command } todo_command ;
struct TYPE_2__ {char* string; } ;


 int ALLOC_GROW (struct todo_item*,int,int) ;
 int COPY_ARRAY (struct todo_item*,struct todo_item*,int) ;
 int FREE_AND_NULL (struct todo_item*) ;
 int TODO_EXEC ;
 int TODO_MERGE ;
 int TODO_PICK ;
 int free (struct todo_item*) ;
 int is_fixup (int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 size_t strlen (char*) ;
 struct todo_item* xcalloc (int,int) ;

void todo_list_add_exec_commands(struct todo_list *todo_list,
     struct string_list *commands)
{
 struct strbuf *buf = &todo_list->buf;
 size_t base_offset = buf->len;
 int i, insert, nr = 0, alloc = 0;
 struct todo_item *items = ((void*)0), *base_items = ((void*)0);

 base_items = xcalloc(commands->nr, sizeof(struct todo_item));
 for (i = 0; i < commands->nr; i++) {
  size_t command_len = strlen(commands->items[i].string);

  strbuf_addstr(buf, commands->items[i].string);
  strbuf_addch(buf, '\n');

  base_items[i].command = TODO_EXEC;
  base_items[i].offset_in_buf = base_offset;
  base_items[i].arg_offset = base_offset + strlen("exec ");
  base_items[i].arg_len = command_len - strlen("exec ");

  base_offset += command_len + 1;
 }
 insert = 0;
 for (i = 0; i < todo_list->nr; i++) {
  enum todo_command command = todo_list->items[i].command;
  if (insert && !is_fixup(command)) {
   ALLOC_GROW(items, nr + commands->nr, alloc);
   COPY_ARRAY(items + nr, base_items, commands->nr);
   nr += commands->nr;

   insert = 0;
  }

  ALLOC_GROW(items, nr + 1, alloc);
  items[nr++] = todo_list->items[i];

  if (command == TODO_PICK || command == TODO_MERGE)
   insert = 1;
 }


 if (insert || nr == todo_list->nr) {
  ALLOC_GROW(items, nr + commands->nr, alloc);
  COPY_ARRAY(items + nr, base_items, commands->nr);
  nr += commands->nr;
 }

 free(base_items);
 FREE_AND_NULL(todo_list->items);
 todo_list->items = items;
 todo_list->nr = nr;
 todo_list->alloc = alloc;
}
