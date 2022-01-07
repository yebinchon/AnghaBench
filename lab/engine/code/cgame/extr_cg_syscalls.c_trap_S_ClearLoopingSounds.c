
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int CG_S_CLEARLOOPINGSOUNDS ;
 int syscall (int ,int ) ;

void trap_S_ClearLoopingSounds( qboolean killall ) {
 syscall( CG_S_CLEARLOOPINGSOUNDS, killall );
}
