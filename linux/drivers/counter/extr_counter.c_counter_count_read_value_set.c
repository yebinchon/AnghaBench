
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_count_read_value {int len; int buf; } ;
typedef enum counter_count_value_type { ____Placeholder_counter_count_value_type } counter_count_value_type ;



 int sprintf (int ,char*,unsigned long) ;

void counter_count_read_value_set(struct counter_count_read_value *const val,
      const enum counter_count_value_type type,
      void *const data)
{
 switch (type) {
 case 128:
  val->len = sprintf(val->buf, "%lu\n", *(unsigned long *)data);
  break;
 default:
  val->len = 0;
 }
}
