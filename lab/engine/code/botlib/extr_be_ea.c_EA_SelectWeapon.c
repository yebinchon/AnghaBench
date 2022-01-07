
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int weapon; } ;
typedef TYPE_1__ bot_input_t ;


 TYPE_1__* botinputs ;

void EA_SelectWeapon(int client, int weapon)
{
 bot_input_t *bi;

 bi = &botinputs[client];

 bi->weapon = weapon;
}
