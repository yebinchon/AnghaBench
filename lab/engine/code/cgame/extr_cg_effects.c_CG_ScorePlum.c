
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_10__ {int radius; int axis; int reType; } ;
typedef TYPE_3__ refEntity_t ;
struct TYPE_9__ {int* trBase; } ;
struct TYPE_11__ {double startTime; double endTime; double lifeRate; double* color; int radius; TYPE_3__ refEntity; TYPE_2__ pos; int leType; scalar_t__ leFlags; } ;
typedef TYPE_4__ localEntity_t ;
struct TYPE_8__ {int clientNum; } ;
struct TYPE_13__ {double time; TYPE_1__ predictedPlayerState; } ;
struct TYPE_12__ {scalar_t__ integer; } ;


 int AnglesToAxis (int*,int ) ;
 TYPE_4__* CG_AllocLocalEntity () ;
 int LE_SCOREPLUM ;
 int RT_SPRITE ;
 int VectorClear (int*) ;
 int VectorCopy (int*,int*) ;
 TYPE_6__ cg ;
 TYPE_5__ cg_scorePlum ;

void CG_ScorePlum( int client, vec3_t org, int score ) {
 localEntity_t *le;
 refEntity_t *re;
 vec3_t angles;
 static vec3_t lastPos;


 if (client != cg.predictedPlayerState.clientNum || cg_scorePlum.integer == 0) {
  return;
 }

 le = CG_AllocLocalEntity();
 le->leFlags = 0;
 le->leType = LE_SCOREPLUM;
 le->startTime = cg.time;
 le->endTime = cg.time + 4000;
 le->lifeRate = 1.0 / ( le->endTime - le->startTime );


 le->color[0] = le->color[1] = le->color[2] = le->color[3] = 1.0;
 le->radius = score;

 VectorCopy( org, le->pos.trBase );
 if (org[2] >= lastPos[2] - 20 && org[2] <= lastPos[2] + 20) {
  le->pos.trBase[2] -= 20;
 }


 VectorCopy(org, lastPos);


 re = &le->refEntity;

 re->reType = RT_SPRITE;
 re->radius = 16;

 VectorClear(angles);
 AnglesToAxis( angles, re->axis );
}
