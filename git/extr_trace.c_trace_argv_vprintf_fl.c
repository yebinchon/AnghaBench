
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int prepare_trace_line (char const*,int,int *,struct strbuf*) ;
 int print_trace_line (int *,struct strbuf*) ;
 int sq_quote_argv_pretty (struct strbuf*,char const**) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_vaddf (struct strbuf*,char const*,int ) ;
 int trace_default_key ;

__attribute__((used)) static void trace_argv_vprintf_fl(const char *file, int line,
      const char **argv, const char *format,
      va_list ap)
{
 struct strbuf buf = STRBUF_INIT;

 if (!prepare_trace_line(file, line, &trace_default_key, &buf))
  return;

 strbuf_vaddf(&buf, format, ap);

 sq_quote_argv_pretty(&buf, argv);
 print_trace_line(&trace_default_key, &buf);
 strbuf_release(&buf);
}
