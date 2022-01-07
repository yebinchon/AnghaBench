
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;


 int begin (struct json_writer*,char,int) ;

void jw_array_begin(struct json_writer *jw, int pretty)
{
 begin(jw, '[', pretty);
}
