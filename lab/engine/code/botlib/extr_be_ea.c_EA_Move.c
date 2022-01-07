
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {float speed; int dir; } ;
typedef TYPE_1__ bot_input_t ;


 float MAX_USERMOVE ;
 int VectorCopy (int ,int ) ;
 TYPE_1__* botinputs ;

void EA_Move(int client, vec3_t dir, float speed)
{
 bot_input_t *bi;

 bi = &botinputs[client];

 VectorCopy(dir, bi->dir);

 if (speed > MAX_USERMOVE) speed = MAX_USERMOVE;
 else if (speed < -MAX_USERMOVE) speed = -MAX_USERMOVE;
 bi->speed = speed;
}
