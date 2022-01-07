
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_6__ {int s; TYPE_1__* client; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_5__ {int ps; } ;


 int BG_TouchJumpPad (int *,int *) ;

void trigger_push_touch (gentity_t *self, gentity_t *other, trace_t *trace ) {

 if ( !other->client ) {
  return;
 }

 BG_TouchJumpPad( &other->client->ps, &self->s );
}
