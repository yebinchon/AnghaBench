
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {double member_0; double member_1; double member_2; } ;
typedef TYPE_2__ vec3_t ;
struct TYPE_14__ {int endpos; } ;
typedef TYPE_3__ trace_t ;
struct TYPE_15__ {TYPE_1__* client; int id; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_16__ {scalar_t__ pm_type; } ;
struct TYPE_12__ {TYPE_9__ ps; } ;


 int MoveToEntitySpace (TYPE_4__*,int ,TYPE_2__) ;
 scalar_t__ PM_DEAD ;
 int dmlab_trigger_lookat (int ,int ,TYPE_2__,TYPE_9__*) ;

void func_lookat_look(gentity_t *self, gentity_t *other, const trace_t *trace) {
 vec3_t local_point = {0.0, 0.0, 0.0};

 if (!other->client) return;
 if (other->client->ps.pm_type == PM_DEAD) return;

 if (trace) {
  MoveToEntitySpace(self, trace->endpos, local_point);
 }
 dmlab_trigger_lookat( self->id, trace != ((void*)0), local_point, &other->client->ps );
}
