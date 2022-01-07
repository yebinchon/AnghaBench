
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
typedef int entityState_t ;
struct TYPE_2__ {int parseEntitiesNum; int * parseEntities; } ;


 int Com_Error (int ,char*,int,int) ;
 int ERR_DROP ;
 int MAX_PARSE_ENTITIES ;
 TYPE_1__ cl ;
 int qfalse ;
 int qtrue ;

qboolean CL_GetParseEntityState( int parseEntityNumber, entityState_t *state ) {

 if ( parseEntityNumber >= cl.parseEntitiesNum ) {
  Com_Error( ERR_DROP, "CL_GetParseEntityState: %i >= %i",
   parseEntityNumber, cl.parseEntitiesNum );
 }


 if ( parseEntityNumber <= cl.parseEntitiesNum - MAX_PARSE_ENTITIES ) {
  return qfalse;
 }

 *state = cl.parseEntities[ parseEntityNumber & ( MAX_PARSE_ENTITIES - 1 ) ];
 return qtrue;
}
