
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct trace_key {int dummy; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int prepare_trace_line (char const*,int,struct trace_key*,struct strbuf*) ;
 int print_trace_line (struct trace_key*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_vaddf (struct strbuf*,char const*,int ) ;

__attribute__((used)) static void trace_vprintf_fl(const char *file, int line, struct trace_key *key,
        const char *format, va_list ap)
{
 struct strbuf buf = STRBUF_INIT;

 if (!prepare_trace_line(file, line, key, &buf))
  return;

 strbuf_vaddf(&buf, format, ap);
 print_trace_line(key, &buf);
 strbuf_release(&buf);
}
