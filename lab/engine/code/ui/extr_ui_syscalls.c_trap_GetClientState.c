
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiClientState_t ;


 int UI_GETCLIENTSTATE ;
 int syscall (int ,int *) ;

void trap_GetClientState( uiClientState_t *state ) {
 syscall( UI_GETCLIENTSTATE, state );
}
