
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int json; scalar_t__ pretty; } ;


 int append_quoted_string (int *,char const*) ;
 int assert_in_object (struct json_writer*,char const*) ;
 int indent_pretty (struct json_writer*) ;
 int maybe_add_comma (struct json_writer*) ;
 int strbuf_addch (int *,char) ;

__attribute__((used)) static void object_common(struct json_writer *jw, const char *key)
{
 assert_in_object(jw, key);
 maybe_add_comma(jw);

 if (jw->pretty) {
  strbuf_addch(&jw->json, '\n');
  indent_pretty(jw);
 }

 append_quoted_string(&jw->json, key);
 strbuf_addch(&jw->json, ':');
 if (jw->pretty)
  strbuf_addch(&jw->json, ' ');
}
