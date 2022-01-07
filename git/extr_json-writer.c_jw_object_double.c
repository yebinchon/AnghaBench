
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_writer {int dummy; } ;


 int fmt_double (struct json_writer*,int,double) ;
 int object_common (struct json_writer*,char const*) ;

void jw_object_double(struct json_writer *jw, const char *key, int precision,
        double value)
{
 object_common(jw, key);
 fmt_double(jw, precision, value);
}
