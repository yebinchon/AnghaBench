
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct child_process {int argv; scalar_t__ git_cmd; int env; int dir; } ;


 struct strbuf STRBUF_INIT ;
 int sq_quote_argv_pretty (struct strbuf*,int ) ;
 int sq_quote_buf_pretty (struct strbuf*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int trace_add_env (struct strbuf*,int ) ;
 int trace_default_key ;
 int trace_printf (char*,int ) ;
 int trace_want (int *) ;

__attribute__((used)) static void trace_run_command(const struct child_process *cp)
{
 struct strbuf buf = STRBUF_INIT;

 if (!trace_want(&trace_default_key))
  return;

 strbuf_addstr(&buf, "trace: run_command:");
 if (cp->dir) {
  strbuf_addstr(&buf, " cd ");
  sq_quote_buf_pretty(&buf, cp->dir);
  strbuf_addch(&buf, ';');
 }




 if (cp->env)
  trace_add_env(&buf, cp->env);
 if (cp->git_cmd)
  strbuf_addstr(&buf, " git");
 sq_quote_argv_pretty(&buf, cp->argv);

 trace_printf("%s", buf.buf);
 strbuf_release(&buf);
}
