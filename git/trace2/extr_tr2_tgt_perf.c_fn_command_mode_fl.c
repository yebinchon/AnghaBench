
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int perf_io_write_fl (char const*,int,char const*,int *,int *,int *,int *,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_command_mode_fl(const char *file, int line, const char *mode)
{
 const char *event_name = "cmd_mode";
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addstr(&buf_payload, mode);

 perf_io_write_fl(file, line, event_name, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
    &buf_payload);
 strbuf_release(&buf_payload);
}
