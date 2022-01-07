
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct json_writer {int json; } ;


 struct json_writer JSON_WRITER_INIT ;
 int event_fmt_prepare (char const*,char const*,int,int *,struct json_writer*) ;
 int jw_end (struct json_writer*) ;
 int jw_object_begin (struct json_writer*,int ) ;
 int jw_object_double (struct json_writer*,char*,int,double) ;
 int jw_object_intmax (struct json_writer*,char*,int) ;
 int jw_release (struct json_writer*) ;
 int tr2_dst_write_line (int *,int *) ;
 int tr2dst_event ;

__attribute__((used)) static void fn_exit_fl(const char *file, int line, uint64_t us_elapsed_absolute,
         int code)
{
 const char *event_name = "exit";
 struct json_writer jw = JSON_WRITER_INIT;
 double t_abs = (double)us_elapsed_absolute / 1000000.0;

 jw_object_begin(&jw, 0);
 event_fmt_prepare(event_name, file, line, ((void*)0), &jw);
 jw_object_double(&jw, "t_abs", 6, t_abs);
 jw_object_intmax(&jw, "code", code);
 jw_end(&jw);

 tr2_dst_write_line(&tr2dst_event, &jw.json);
 jw_release(&jw);
}
