
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;


 int jw_object_false (struct json_writer*,char const*) ;
 int jw_object_true (struct json_writer*,char const*) ;

void jw_object_bool(struct json_writer *jw, const char *key, int value)
{
 if (value)
  jw_object_true(jw, key);
 else
  jw_object_false(jw, key);
}
