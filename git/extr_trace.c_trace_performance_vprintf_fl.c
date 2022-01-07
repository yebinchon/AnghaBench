
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef scalar_t__ uint64_t ;
struct strbuf {int dummy; } ;


 int BUG (char*) ;
 struct strbuf STRBUF_INIT ;
 int perf_indent ;
 int prepare_trace_line (char const*,int,int *,struct strbuf*) ;
 int print_trace_line (int *,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,double,...) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_vaddf (struct strbuf*,char const*,int ) ;
 int strlen (char const*) ;
 int trace_perf_key ;

__attribute__((used)) static void trace_performance_vprintf_fl(const char *file, int line,
      uint64_t nanos, const char *format,
      va_list ap)
{
 static const char space[] = "          ";
 struct strbuf buf = STRBUF_INIT;

 if (!prepare_trace_line(file, line, &trace_perf_key, &buf))
  return;

 strbuf_addf(&buf, "performance: %.9f s", (double) nanos / 1000000000);

 if (format && *format) {
  if (perf_indent >= strlen(space))
   BUG("Too deep indentation");

  strbuf_addf(&buf, ":%.*s ", perf_indent, space);
  strbuf_vaddf(&buf, format, ap);
 }

 print_trace_line(&trace_perf_key, &buf);
 strbuf_release(&buf);
}
