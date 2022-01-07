
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int perf_io_write_fl (char const*,int,char const*,int *,int *,int *,int *,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,int,int,int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_child_exit_fl(const char *file, int line,
        uint64_t us_elapsed_absolute, int cid, int pid,
        int code, uint64_t us_elapsed_child)
{
 const char *event_name = "child_exit";
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addf(&buf_payload, "[ch%d] pid:%d code:%d", cid, pid, code);

 perf_io_write_fl(file, line, event_name, ((void*)0), &us_elapsed_absolute,
    &us_elapsed_child, ((void*)0), &buf_payload);
 strbuf_release(&buf_payload);
}
