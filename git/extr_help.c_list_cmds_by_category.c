
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct string_list {int dummy; } ;
struct cmdname_help {int category; int name; } ;


 int ARRAY_SIZE (struct cmdname_help*) ;
 int _ (char*) ;
 scalar_t__* category_names ;
 struct cmdname_help* command_list ;
 int die (int ,char const*) ;
 int drop_prefix (int ,int) ;
 int strcmp (char const*,scalar_t__) ;
 int string_list_append (struct string_list*,int ) ;

void list_cmds_by_category(struct string_list *list,
      const char *cat)
{
 int i, n = ARRAY_SIZE(command_list);
 uint32_t cat_id = 0;

 for (i = 0; category_names[i]; i++) {
  if (!strcmp(cat, category_names[i])) {
   cat_id = 1UL << i;
   break;
  }
 }
 if (!cat_id)
  die(_("unsupported command listing type '%s'"), cat);

 for (i = 0; i < n; i++) {
  struct cmdname_help *cmd = command_list + i;

  if (!(cmd->category & cat_id))
   continue;
  string_list_append(list, drop_prefix(cmd->name, cmd->category));
 }
}
