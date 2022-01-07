
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int open_stack; int json; } ;


 int strbuf_release (int *) ;

void jw_release(struct json_writer *jw)
{
 strbuf_release(&jw->json);
 strbuf_release(&jw->open_stack);
}
