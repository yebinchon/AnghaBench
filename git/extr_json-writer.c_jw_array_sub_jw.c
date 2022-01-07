
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;


 int append_sub_jw (struct json_writer*,struct json_writer const*) ;
 int array_common (struct json_writer*) ;
 int assert_is_terminated (struct json_writer const*) ;

void jw_array_sub_jw(struct json_writer *jw, const struct json_writer *value)
{
 assert_is_terminated(value);

 array_common(jw);
 append_sub_jw(jw, value);
}
