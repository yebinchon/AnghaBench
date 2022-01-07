
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct todo_list {int nr; struct todo_item* items; } ;
struct todo_item {scalar_t__ command; int flags; int arg_len; TYPE_2__* commit; } ;
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 scalar_t__ TODO_COMMENT ;
 int TODO_EDIT_MERGE_MSG ;
 unsigned int TODO_LIST_ABBREVIATE_CMDS ;
 unsigned int TODO_LIST_SHORTEN_IDS ;
 scalar_t__ TODO_MERGE ;
 char command_to_char (scalar_t__) ;
 char* command_to_string (scalar_t__) ;
 char* oid_to_hex (int *) ;
 char* short_commit_name (TYPE_2__*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int todo_item_get_arg (struct todo_list*,struct todo_item*) ;

__attribute__((used)) static void todo_list_to_strbuf(struct repository *r, struct todo_list *todo_list,
    struct strbuf *buf, int num, unsigned flags)
{
 struct todo_item *item;
 int i, max = todo_list->nr;

 if (num > 0 && num < max)
  max = num;

 for (item = todo_list->items, i = 0; i < max; i++, item++) {

  if (item->command >= TODO_COMMENT) {
   strbuf_addf(buf, "%.*s\n", item->arg_len,
        todo_item_get_arg(todo_list, item));
   continue;
  }


  if (flags & TODO_LIST_ABBREVIATE_CMDS)
   strbuf_addch(buf, command_to_char(item->command));
  else
   strbuf_addstr(buf, command_to_string(item->command));


  if (item->commit) {
   const char *oid = flags & TODO_LIST_SHORTEN_IDS ?
       short_commit_name(item->commit) :
       oid_to_hex(&item->commit->object.oid);

   if (item->command == TODO_MERGE) {
    if (item->flags & TODO_EDIT_MERGE_MSG)
     strbuf_addstr(buf, " -c");
    else
     strbuf_addstr(buf, " -C");
   }

   strbuf_addf(buf, " %s", oid);
  }


  if (!item->arg_len)
   strbuf_addch(buf, '\n');
  else
   strbuf_addf(buf, " %.*s\n", item->arg_len,
        todo_item_get_arg(todo_list, item));
 }
}
