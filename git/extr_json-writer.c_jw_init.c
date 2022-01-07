
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {scalar_t__ pretty; scalar_t__ need_comma; int open_stack; int json; } ;


 int strbuf_init (int *,int ) ;

void jw_init(struct json_writer *jw)
{
 strbuf_init(&jw->json, 0);
 strbuf_init(&jw->open_stack, 0);
 jw->need_comma = 0;
 jw->pretty = 0;
}
