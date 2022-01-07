
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 scalar_t__ kill (int,int ) ;

qboolean Sys_PIDIsRunning( int pid )
{
 return kill( pid, 0 ) == 0;
}
