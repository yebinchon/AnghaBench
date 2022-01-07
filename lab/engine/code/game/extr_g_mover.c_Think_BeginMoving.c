
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int trType; int trTime; } ;
struct TYPE_7__ {TYPE_1__ pos; } ;
struct TYPE_8__ {TYPE_2__ s; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_9__ {int time; } ;


 int TR_LINEAR_STOP ;
 TYPE_4__ level ;

void Think_BeginMoving( gentity_t *ent ) {
 ent->s.pos.trTime = level.time;
 ent->s.pos.trType = TR_LINEAR_STOP;
}
