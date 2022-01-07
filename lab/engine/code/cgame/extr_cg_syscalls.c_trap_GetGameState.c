
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gameState_t ;


 int CG_GETGAMESTATE ;
 int syscall (int ,int *) ;

void trap_GetGameState( gameState_t *gamestate ) {
 syscall( CG_GETGAMESTATE, gamestate );
}
