
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct strbuf {int dummy; } ;
struct child_process {int argv; scalar_t__ git_cmd; int dir; int trace2_child_id; } ;


 struct strbuf STRBUF_INIT ;
 int normal_io_write_fl (char const*,int,struct strbuf*) ;
 int sq_append_quote_argv_pretty (struct strbuf*,int ) ;
 int sq_quote_buf_pretty (struct strbuf*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_child_start_fl(const char *file, int line,
         uint64_t us_elapsed_absolute,
         const struct child_process *cmd)
{
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addf(&buf_payload, "child_start[%d]", cmd->trace2_child_id);

 if (cmd->dir) {
  strbuf_addstr(&buf_payload, " cd ");
  sq_quote_buf_pretty(&buf_payload, cmd->dir);
  strbuf_addstr(&buf_payload, ";");
 }






 strbuf_addch(&buf_payload, ' ');
 if (cmd->git_cmd)
  strbuf_addstr(&buf_payload, "git ");
 sq_append_quote_argv_pretty(&buf_payload, cmd->argv);

 normal_io_write_fl(file, line, &buf_payload);
 strbuf_release(&buf_payload);
}
