
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_S_STOPLOOPINGSOUND ;
 int syscall (int ,int) ;

void trap_S_StopLoopingSound( int entityNum ) {
 syscall( CG_S_STOPLOOPINGSOUND, entityNum );
}
