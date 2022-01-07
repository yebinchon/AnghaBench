
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_KEY_SETCATCHER ;
 int syscall (int ,int) ;

void trap_Key_SetCatcher( int catcher ) {
 syscall( UI_KEY_SETCATCHER, catcher );
}
