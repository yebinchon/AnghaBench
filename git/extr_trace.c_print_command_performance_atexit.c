
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;


 TYPE_1__ command_line ;
 int trace_performance_leave (char*,int ) ;

__attribute__((used)) static void print_command_performance_atexit(void)
{
 trace_performance_leave("git command:%s", command_line.buf);
}
