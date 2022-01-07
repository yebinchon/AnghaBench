
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct todo_list {int dummy; } ;
struct strbuf {int len; int buf; } ;
struct repository {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 unsigned int TODO_LIST_APPEND_TODO_HELP ;
 unsigned int TODO_LIST_KEEP_EMPTY ;
 int append_todo_help (unsigned int,int ,char const*,char const*,struct strbuf*) ;
 int count_commands (struct todo_list*) ;
 int strbuf_release (struct strbuf*) ;
 int todo_list_to_strbuf (struct repository*,struct todo_list*,struct strbuf*,int,unsigned int) ;
 int write_message (int ,int ,char const*,int ) ;

int todo_list_write_to_file(struct repository *r, struct todo_list *todo_list,
       const char *file, const char *shortrevisions,
       const char *shortonto, int num, unsigned flags)
{
 int res;
 struct strbuf buf = STRBUF_INIT;

 todo_list_to_strbuf(r, todo_list, &buf, num, flags);
 if (flags & TODO_LIST_APPEND_TODO_HELP)
  append_todo_help(flags & TODO_LIST_KEEP_EMPTY, count_commands(todo_list),
     shortrevisions, shortonto, &buf);

 res = write_message(buf.buf, buf.len, file, 0);
 strbuf_release(&buf);

 return res;
}
