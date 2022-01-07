
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct child_process {int stdout_to_stderr; } ;


 struct strbuf STRBUF_INIT ;
 int fputs (int ,int ) ;
 int pipe_command (struct child_process*,int *,int ,int *,int ,struct strbuf*,int ) ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int run_command_silent_on_success(struct child_process *cmd)
{
 struct strbuf buf = STRBUF_INIT;
 int rc;

 cmd->stdout_to_stderr = 1;
 rc = pipe_command(cmd,
     ((void*)0), 0,
     ((void*)0), 0,
     &buf, 0);

 if (rc)
  fputs(buf.buf, stderr);
 strbuf_release(&buf);
 return rc;
}
