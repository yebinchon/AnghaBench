
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct todo_list {int nr; scalar_t__ current; struct todo_item* items; } ;
struct todo_item {scalar_t__ command; TYPE_5__* commit; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_9__ {int oid; } ;
struct TYPE_10__ {TYPE_4__ object; TYPE_3__* parents; } ;
struct TYPE_8__ {TYPE_2__* item; scalar_t__ next; } ;
struct TYPE_6__ {struct object_id oid; } ;
struct TYPE_7__ {TYPE_1__ object; } ;


 int MOVE_ARRAY (struct todo_item*,struct todo_item*,int) ;
 scalar_t__ TODO_NOOP ;
 scalar_t__ TODO_PICK ;
 int _ (char*) ;
 int error (int ,int ) ;
 int error_errno (int ,char const*) ;
 scalar_t__ is_fixup (int ) ;
 int oid_to_hex (int *) ;
 int oidcpy (struct object_id*,int *) ;
 int oideq (struct object_id*,struct object_id*) ;
 scalar_t__ parse_commit (TYPE_5__*) ;
 int peek_command (struct todo_list*,int ) ;
 char* rebase_path_done () ;
 int record_in_rewritten (struct object_id*,int ) ;
 scalar_t__ todo_list_write_to_file (struct repository*,struct todo_list*,char const*,int *,int *,int,int ) ;

__attribute__((used)) static int skip_unnecessary_picks(struct repository *r,
      struct todo_list *todo_list,
      struct object_id *base_oid)
{
 struct object_id *parent_oid;
 int i;

 for (i = 0; i < todo_list->nr; i++) {
  struct todo_item *item = todo_list->items + i;

  if (item->command >= TODO_NOOP)
   continue;
  if (item->command != TODO_PICK)
   break;
  if (parse_commit(item->commit)) {
   return error(_("could not parse commit '%s'"),
    oid_to_hex(&item->commit->object.oid));
  }
  if (!item->commit->parents)
   break;
  if (item->commit->parents->next)
   break;
  parent_oid = &item->commit->parents->item->object.oid;
  if (!oideq(parent_oid, base_oid))
   break;
  oidcpy(base_oid, &item->commit->object.oid);
 }
 if (i > 0) {
  const char *done_path = rebase_path_done();

  if (todo_list_write_to_file(r, todo_list, done_path, ((void*)0), ((void*)0), i, 0)) {
   error_errno(_("could not write to '%s'"), done_path);
   return -1;
  }

  MOVE_ARRAY(todo_list->items, todo_list->items + i, todo_list->nr - i);
  todo_list->nr -= i;
  todo_list->current = 0;

  if (is_fixup(peek_command(todo_list, 0)))
   record_in_rewritten(base_oid, peek_command(todo_list, 0));
 }

 return 0;
}
