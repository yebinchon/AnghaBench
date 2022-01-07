
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int buf; } ;
struct todo_list {TYPE_1__ buf; } ;
struct repository {int dummy; } ;


 unsigned int TODO_LIST_APPEND_TODO_HELP ;
 unsigned int TODO_LIST_SHORTEN_IDS ;
 int _ (char*) ;
 scalar_t__ copy_file (char*,char const*,int) ;
 int error (int ,char const*,char*) ;
 int error_errno (int ,char const*) ;
 scalar_t__ launch_sequence_editor (char const*,TYPE_1__*,int *) ;
 char* rebase_path_todo () ;
 char* rebase_path_todo_backup () ;
 int strbuf_stripspace (TYPE_1__*,int) ;
 int todo_list_parse_insn_buffer (struct repository*,int ,struct todo_list*) ;
 scalar_t__ todo_list_write_to_file (struct repository*,struct todo_list*,char const*,char const*,char const*,int,unsigned int) ;

int edit_todo_list(struct repository *r, struct todo_list *todo_list,
     struct todo_list *new_todo, const char *shortrevisions,
     const char *shortonto, unsigned flags)
{
 const char *todo_file = rebase_path_todo();
 unsigned initial = shortrevisions && shortonto;




 if (!initial)
  todo_list_parse_insn_buffer(r, todo_list->buf.buf, todo_list);

 if (todo_list_write_to_file(r, todo_list, todo_file, shortrevisions, shortonto,
        -1, flags | TODO_LIST_SHORTEN_IDS | TODO_LIST_APPEND_TODO_HELP))
  return error_errno(_("could not write '%s'"), todo_file);

 if (initial && copy_file(rebase_path_todo_backup(), todo_file, 0666))
  return error(_("could not copy '%s' to '%s'."), todo_file,
        rebase_path_todo_backup());

 if (launch_sequence_editor(todo_file, &new_todo->buf, ((void*)0)))
  return -2;

 strbuf_stripspace(&new_todo->buf, 1);
 if (initial && new_todo->buf.len == 0)
  return -3;



 if (!initial)
  return todo_list_parse_insn_buffer(r, new_todo->buf.buf, new_todo);

 return 0;
}
