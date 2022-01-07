
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float thinktime; } ;
typedef TYPE_1__ bot_input_t ;


 int Com_Memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* botinputs ;

void EA_GetInput(int client, float thinktime, bot_input_t *input)
{
 bot_input_t *bi;

 bi = &botinputs[client];
 bi->thinktime = thinktime;
 Com_Memcpy(input, bi, sizeof(bot_input_t));
}
