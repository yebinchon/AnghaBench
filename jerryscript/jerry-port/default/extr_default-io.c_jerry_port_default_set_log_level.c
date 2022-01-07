
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_log_level_t ;


 int jerry_port_default_log_level ;

void
jerry_port_default_set_log_level (jerry_log_level_t level)
{
  jerry_port_default_log_level = level;
}
