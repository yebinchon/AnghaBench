
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int json; } ;


 int array_common (struct json_writer*) ;
 int strbuf_addstr (int *,char*) ;

void jw_array_false(struct json_writer *jw)
{
 array_common(jw);
 strbuf_addstr(&jw->json, "false");
}
