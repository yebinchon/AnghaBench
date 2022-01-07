
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct halt_info {int mode; char* restart_cmd; } ;


 int common_shutdown_1 ;
 int on_each_cpu (int ,struct halt_info*,int ) ;

__attribute__((used)) static void
common_shutdown(int mode, char *restart_cmd)
{
 struct halt_info args;
 args.mode = mode;
 args.restart_cmd = restart_cmd;
 on_each_cpu(common_shutdown_1, &args, 0);
}
