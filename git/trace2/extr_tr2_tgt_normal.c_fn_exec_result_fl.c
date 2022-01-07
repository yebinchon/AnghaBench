
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int normal_io_write_fl (char const*,int,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,int,...) ;
 int strbuf_release (struct strbuf*) ;
 int strerror (int) ;

__attribute__((used)) static void fn_exec_result_fl(const char *file, int line,
         uint64_t us_elapsed_absolute, int exec_id,
         int code)
{
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addf(&buf_payload, "exec_result[%d] code:%d", exec_id, code);
 if (code > 0)
  strbuf_addf(&buf_payload, " err:%s", strerror(code));
 normal_io_write_fl(file, line, &buf_payload);
 strbuf_release(&buf_payload);
}
