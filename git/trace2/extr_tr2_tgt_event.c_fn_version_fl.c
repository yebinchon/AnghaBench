
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct json_writer {int json; } ;
struct TYPE_3__ {scalar_t__ too_many_files; } ;


 struct json_writer JSON_WRITER_INIT ;
 int TR2_EVENT_VERSION ;
 int event_fmt_prepare (char const*,char const*,int,int *,struct json_writer*) ;
 int fn_too_many_files_fl (char const*,int) ;
 int git_version_string ;
 int jw_end (struct json_writer*) ;
 int jw_object_begin (struct json_writer*,int ) ;
 int jw_object_string (struct json_writer*,char*,int ) ;
 int jw_release (struct json_writer*) ;
 int tr2_dst_write_line (TYPE_1__*,int *) ;
 TYPE_1__ tr2dst_event ;

__attribute__((used)) static void fn_version_fl(const char *file, int line)
{
 const char *event_name = "version";
 struct json_writer jw = JSON_WRITER_INIT;

 jw_object_begin(&jw, 0);
 event_fmt_prepare(event_name, file, line, ((void*)0), &jw);
 jw_object_string(&jw, "evt", TR2_EVENT_VERSION);
 jw_object_string(&jw, "exe", git_version_string);
 jw_end(&jw);

 tr2_dst_write_line(&tr2dst_event, &jw.json);
 jw_release(&jw);

 if (tr2dst_event.too_many_files)
  fn_too_many_files_fl(file, line);
}
