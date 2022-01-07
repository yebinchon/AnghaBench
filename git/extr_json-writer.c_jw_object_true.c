
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int json; } ;


 int object_common (struct json_writer*,char const*) ;
 int strbuf_addstr (int *,char*) ;

void jw_object_true(struct json_writer *jw, const char *key)
{
 object_common(jw, key);
 strbuf_addstr(&jw->json, "true");
}
