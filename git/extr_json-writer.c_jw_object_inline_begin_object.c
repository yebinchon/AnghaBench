
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int pretty; } ;


 int jw_object_begin (struct json_writer*,int ) ;
 int object_common (struct json_writer*,char const*) ;

void jw_object_inline_begin_object(struct json_writer *jw, const char *key)
{
 object_common(jw, key);

 jw_object_begin(jw, jw->pretty);
}
