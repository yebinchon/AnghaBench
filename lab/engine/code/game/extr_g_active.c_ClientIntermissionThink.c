
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int buttons; } ;
struct TYPE_6__ {TYPE_3__ cmd; } ;
struct TYPE_7__ {int eFlags; } ;
struct TYPE_9__ {int oldbuttons; int buttons; int readyToExit; TYPE_1__ pers; TYPE_2__ ps; } ;
typedef TYPE_4__ gclient_t ;


 int BUTTON_ATTACK ;
 int BUTTON_USE_HOLDABLE ;
 int EF_FIRING ;
 int EF_TALK ;

void ClientIntermissionThink( gclient_t *client ) {
 client->ps.eFlags &= ~EF_TALK;
 client->ps.eFlags &= ~EF_FIRING;




 client->oldbuttons = client->buttons;
 client->buttons = client->pers.cmd.buttons;
 if ( client->buttons & ( BUTTON_ATTACK | BUTTON_USE_HOLDABLE ) & ( client->oldbuttons ^ client->buttons ) ) {

  client->readyToExit = 1;
 }
}
