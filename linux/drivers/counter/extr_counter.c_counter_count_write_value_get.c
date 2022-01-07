
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_count_write_value {int buf; } ;
typedef enum counter_count_value_type { ____Placeholder_counter_count_value_type } counter_count_value_type ;



 int kstrtoul (int ,int ,void* const) ;

int counter_count_write_value_get(void *const data,
      const enum counter_count_value_type type,
      const struct counter_count_write_value *const val)
{
 int err;

 switch (type) {
 case 128:
  err = kstrtoul(val->buf, 0, data);
  if (err)
   return err;
  break;
 }

 return 0;
}
