
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int json; } ;


 int append_quoted_string (int *,char const*) ;
 int object_common (struct json_writer*,char const*) ;

void jw_object_string(struct json_writer *jw, const char *key, const char *value)
{
 object_common(jw, key);
 append_quoted_string(&jw->json, value);
}
