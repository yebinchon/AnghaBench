
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_INIT_MOVE_STATE ;
 int syscall (int ,int,void*) ;

void trap_BotInitMoveState(int handle, void *initmove) {
 syscall( BOTLIB_AI_INIT_MOVE_STATE, handle, initmove );
}
