
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;


 int array_common (struct json_writer*) ;
 int fmt_double (struct json_writer*,int,double) ;

void jw_array_double(struct json_writer *jw, int precision, double value)
{
 array_common(jw);
 fmt_double(jw, precision, value);
}
