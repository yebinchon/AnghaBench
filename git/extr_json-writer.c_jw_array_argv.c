
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;


 int jw_array_string (struct json_writer*,int ) ;

void jw_array_argv(struct json_writer *jw, const char **argv)
{
 while (*argv)
  jw_array_string(jw, *argv++);
}
