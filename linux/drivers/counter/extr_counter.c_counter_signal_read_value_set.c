
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_signal_read_value {scalar_t__ len; int buf; } ;
typedef enum counter_signal_value_type { ____Placeholder_counter_signal_value_type } counter_signal_value_type ;
typedef enum counter_signal_level { ____Placeholder_counter_signal_level } counter_signal_level ;


 int const COUNTER_SIGNAL_LEVEL ;
 char** counter_signal_level_str ;
 scalar_t__ sprintf (int ,char*,char*) ;

void counter_signal_read_value_set(struct counter_signal_read_value *const val,
       const enum counter_signal_value_type type,
       void *const data)
{
 if (type == COUNTER_SIGNAL_LEVEL)
  val->len = sprintf(val->buf, "%s\n",
       counter_signal_level_str[*(enum counter_signal_level *)data]);
 else
  val->len = 0;
}
