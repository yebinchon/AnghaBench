
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;


 int jw_array_string (struct json_writer*,char const*) ;

void jw_array_argc_argv(struct json_writer *jw, int argc, const char **argv)
{
 int k;

 for (k = 0; k < argc; k++)
  jw_array_string(jw, argv[k]);
}
