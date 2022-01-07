
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int pretty; } ;


 int array_common (struct json_writer*) ;
 int jw_array_begin (struct json_writer*,int ) ;

void jw_array_inline_begin_array(struct json_writer *jw)
{
 array_common(jw);

 jw_array_begin(jw, jw->pretty);
}
