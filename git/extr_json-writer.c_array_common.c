
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int json; scalar_t__ pretty; } ;


 int assert_in_array (struct json_writer*) ;
 int indent_pretty (struct json_writer*) ;
 int maybe_add_comma (struct json_writer*) ;
 int strbuf_addch (int *,char) ;

__attribute__((used)) static void array_common(struct json_writer *jw)
{
 assert_in_array(jw);
 maybe_add_comma(jw);

 if (jw->pretty) {
  strbuf_addch(&jw->json, '\n');
  indent_pretty(jw);
 }
}
