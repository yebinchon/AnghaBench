
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int uint64_t ;
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int maybe_append_string_va (struct strbuf*,char const*,int ) ;
 int perf_io_write_fl (char const*,int,char const*,struct repository const*,int *,int *,char const*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_region_leave_printf_va_fl(
 const char *file, int line, uint64_t us_elapsed_absolute,
 uint64_t us_elapsed_region, const char *category, const char *label,
 const struct repository *repo, const char *fmt, va_list ap)
{
 const char *event_name = "region_leave";
 struct strbuf buf_payload = STRBUF_INIT;

 if (label)
  strbuf_addf(&buf_payload, "label:%s", label);
 if (fmt && *fmt) {
  strbuf_addch(&buf_payload, ' ' );
  maybe_append_string_va(&buf_payload, fmt, ap);
 }

 perf_io_write_fl(file, line, event_name, repo, &us_elapsed_absolute,
    &us_elapsed_region, category, &buf_payload);
 strbuf_release(&buf_payload);
}
