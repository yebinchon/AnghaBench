
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int viewangles; } ;
typedef TYPE_1__ bot_input_t ;


 int VectorCopy (int ,int ) ;
 TYPE_1__* botinputs ;

void EA_View(int client, vec3_t viewangles)
{
 bot_input_t *bi;

 bi = &botinputs[client];

 VectorCopy(viewangles, bi->viewangles);
}
