
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int client; } ;
typedef TYPE_1__ bot_movestate_t ;


 int EA_Move (int ,int ,float) ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ) ;
 int qtrue ;

int BotSwimInDirection(bot_movestate_t *ms, vec3_t dir, float speed, int type)
{
 vec3_t normdir;

 VectorCopy(dir, normdir);
 VectorNormalize(normdir);
 EA_Move(ms->client, normdir, speed);
 return qtrue;
}
