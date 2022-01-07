
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct json_writer {int json; } ;


 struct json_writer JSON_WRITER_INIT ;
 int event_fmt_prepare (char const*,char const*,int,int *,struct json_writer*) ;
 int jw_end (struct json_writer*) ;
 int jw_object_begin (struct json_writer*,int ) ;
 int jw_object_string (struct json_writer*,char*,char const*) ;
 int jw_release (struct json_writer*) ;
 int maybe_add_string_va (struct json_writer*,char*,char const*,int ) ;
 int tr2_dst_write_line (int *,int *) ;
 int tr2dst_event ;

__attribute__((used)) static void fn_error_va_fl(const char *file, int line, const char *fmt,
      va_list ap)
{
 const char *event_name = "error";
 struct json_writer jw = JSON_WRITER_INIT;

 jw_object_begin(&jw, 0);
 event_fmt_prepare(event_name, file, line, ((void*)0), &jw);
 maybe_add_string_va(&jw, "msg", fmt, ap);






 if (fmt && *fmt)
  jw_object_string(&jw, "fmt", fmt);
 jw_end(&jw);

 tr2_dst_write_line(&tr2dst_event, &jw.json);
 jw_release(&jw);
}
