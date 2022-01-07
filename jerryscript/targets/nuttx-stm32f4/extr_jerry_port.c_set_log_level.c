
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_log_level_t ;


 int jerry_log_level ;

void set_log_level (jerry_log_level_t level)
{
  jerry_log_level = level;
}
