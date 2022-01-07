
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_6__ {int client; } ;
typedef TYPE_1__ gentity_t ;


 int multi_trigger (TYPE_1__*,TYPE_1__*) ;

void Touch_Multi( gentity_t *self, gentity_t *other, trace_t *trace ) {
 if( !other->client ) {
  return;
 }
 multi_trigger( self, other );
}
