
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int json; } ;


 int append_quoted_string (int *,char const*) ;
 int array_common (struct json_writer*) ;

void jw_array_string(struct json_writer *jw, const char *value)
{
 array_common(jw);
 append_quoted_string(&jw->json, value);
}
