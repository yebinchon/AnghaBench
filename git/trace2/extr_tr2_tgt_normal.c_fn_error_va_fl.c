
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int maybe_append_string_va (struct strbuf*,char const*,int ) ;
 int normal_io_write_fl (char const*,int,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_error_va_fl(const char *file, int line, const char *fmt,
      va_list ap)
{
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addstr(&buf_payload, "error");
 if (fmt && *fmt) {
  strbuf_addch(&buf_payload, ' ');
  maybe_append_string_va(&buf_payload, fmt, ap);
 }
 normal_io_write_fl(file, line, &buf_payload);
 strbuf_release(&buf_payload);
}
