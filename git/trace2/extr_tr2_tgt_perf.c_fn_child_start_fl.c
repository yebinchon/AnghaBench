
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct strbuf {int dummy; } ;
struct child_process {char const* trace2_hook_name; char* trace2_child_class; scalar_t__* argv; scalar_t__ git_cmd; int dir; int trace2_child_id; } ;


 struct strbuf STRBUF_INIT ;
 int perf_io_write_fl (char const*,int,char const*,int *,int *,int *,int *,struct strbuf*) ;
 int sq_append_quote_argv_pretty (struct strbuf*,scalar_t__*) ;
 int sq_quote_buf_pretty (struct strbuf*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_child_start_fl(const char *file, int line,
         uint64_t us_elapsed_absolute,
         const struct child_process *cmd)
{
 const char *event_name = "child_start";
 struct strbuf buf_payload = STRBUF_INIT;

 if (cmd->trace2_hook_name) {
  strbuf_addf(&buf_payload, "[ch%d] class:hook hook:%s",
       cmd->trace2_child_id, cmd->trace2_hook_name);
 } else {
  const char *child_class =
   cmd->trace2_child_class ? cmd->trace2_child_class : "?";
  strbuf_addf(&buf_payload, "[ch%d] class:%s",
       cmd->trace2_child_id, child_class);
 }

 if (cmd->dir) {
  strbuf_addstr(&buf_payload, " cd:");
  sq_quote_buf_pretty(&buf_payload, cmd->dir);
 }

 strbuf_addstr(&buf_payload, " argv:[");
 if (cmd->git_cmd) {
  strbuf_addstr(&buf_payload, "git");
  if (cmd->argv[0])
   strbuf_addch(&buf_payload, ' ');
 }
 sq_append_quote_argv_pretty(&buf_payload, cmd->argv);
 strbuf_addch(&buf_payload, ']');

 perf_io_write_fl(file, line, event_name, ((void*)0), &us_elapsed_absolute,
    ((void*)0), ((void*)0), &buf_payload);
 strbuf_release(&buf_payload);
}
