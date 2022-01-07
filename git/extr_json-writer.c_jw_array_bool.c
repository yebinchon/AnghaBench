
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;


 int jw_array_false (struct json_writer*) ;
 int jw_array_true (struct json_writer*) ;

void jw_array_bool(struct json_writer *jw, int value)
{
 if (value)
  jw_array_true(jw);
 else
  jw_array_false(jw);
}
