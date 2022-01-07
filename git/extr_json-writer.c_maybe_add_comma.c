
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int need_comma; int json; } ;


 int strbuf_addch (int *,char) ;

__attribute__((used)) static void maybe_add_comma(struct json_writer *jw)
{
 if (jw->need_comma)
  strbuf_addch(&jw->json, ',');
 else
  jw->need_comma = 1;
}
