
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int actionflags; } ;
typedef TYPE_1__ bot_input_t ;


 int ACTION_DELAYEDJUMP ;
 int ACTION_JUMPEDLASTFRAME ;
 TYPE_1__* botinputs ;

void EA_DelayedJump(int client)
{
 bot_input_t *bi;

 bi = &botinputs[client];

 if (bi->actionflags & ACTION_JUMPEDLASTFRAME)
 {
  bi->actionflags &= ~ACTION_DELAYEDJUMP;
 }
 else
 {
  bi->actionflags |= ACTION_DELAYEDJUMP;
 }
}
