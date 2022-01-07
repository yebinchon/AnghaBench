
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int uint64_t ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int maybe_append_string_va (struct strbuf*,char const*,int ) ;
 int perf_io_write_fl (char const*,int,char const*,int *,int *,int *,int *,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_printf_va_fl(const char *file, int line,
       uint64_t us_elapsed_absolute, const char *fmt,
       va_list ap)
{
 const char *event_name = "printf";
 struct strbuf buf_payload = STRBUF_INIT;

 maybe_append_string_va(&buf_payload, fmt, ap);

 perf_io_write_fl(file, line, event_name, ((void*)0), &us_elapsed_absolute,
    ((void*)0), ((void*)0), &buf_payload);
 strbuf_release(&buf_payload);
}
