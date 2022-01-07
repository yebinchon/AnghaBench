
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ log_format; } ;


 TYPE_1__ conf ;
 char* escape_str (scalar_t__) ;

__attribute__((used)) static char *
get_input_log_format (void)
{
  char *log_format = ((void*)0);

  if (conf.log_format)
    log_format = escape_str (conf.log_format);
  return log_format;
}
