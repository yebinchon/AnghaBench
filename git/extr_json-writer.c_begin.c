
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int pretty; scalar_t__ need_comma; int open_stack; int json; } ;


 int strbuf_addch (int *,char) ;

__attribute__((used)) static void begin(struct json_writer *jw, char ch_open, int pretty)
{
 jw->pretty = pretty;

 strbuf_addch(&jw->json, ch_open);

 strbuf_addch(&jw->open_stack, ch_open);
 jw->need_comma = 0;
}
