
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ forwardmove; scalar_t__ rightmove; } ;
struct TYPE_6__ {TYPE_2__* ps; TYPE_1__ cmd; } ;
struct TYPE_5__ {int movementDir; } ;


 TYPE_3__* pm ;

__attribute__((used)) static void PM_SetMovementDir( void ) {
 if ( pm->cmd.forwardmove || pm->cmd.rightmove ) {
  if ( pm->cmd.rightmove == 0 && pm->cmd.forwardmove > 0 ) {
   pm->ps->movementDir = 0;
  } else if ( pm->cmd.rightmove < 0 && pm->cmd.forwardmove > 0 ) {
   pm->ps->movementDir = 1;
  } else if ( pm->cmd.rightmove < 0 && pm->cmd.forwardmove == 0 ) {
   pm->ps->movementDir = 2;
  } else if ( pm->cmd.rightmove < 0 && pm->cmd.forwardmove < 0 ) {
   pm->ps->movementDir = 3;
  } else if ( pm->cmd.rightmove == 0 && pm->cmd.forwardmove < 0 ) {
   pm->ps->movementDir = 4;
  } else if ( pm->cmd.rightmove > 0 && pm->cmd.forwardmove < 0 ) {
   pm->ps->movementDir = 5;
  } else if ( pm->cmd.rightmove > 0 && pm->cmd.forwardmove == 0 ) {
   pm->ps->movementDir = 6;
  } else if ( pm->cmd.rightmove > 0 && pm->cmd.forwardmove > 0 ) {
   pm->ps->movementDir = 7;
  }
 } else {



  if ( pm->ps->movementDir == 2 ) {
   pm->ps->movementDir = 1;
  } else if ( pm->ps->movementDir == 6 ) {
   pm->ps->movementDir = 7;
  }
 }
}
