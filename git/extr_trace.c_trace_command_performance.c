
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;


 int atexit (int ) ;
 TYPE_1__ command_line ;
 int print_command_performance_atexit ;
 int sq_quote_argv_pretty (TYPE_1__*,char const**) ;
 int strbuf_reset (TYPE_1__*) ;
 int trace_perf_key ;
 int trace_performance_enter () ;
 int trace_want (int *) ;

void trace_command_performance(const char **argv)
{
 if (!trace_want(&trace_perf_key))
  return;

 if (!command_line.len)
  atexit(print_command_performance_atexit);

 strbuf_reset(&command_line);
 sq_quote_argv_pretty(&command_line, argv);
 trace_performance_enter();
}
