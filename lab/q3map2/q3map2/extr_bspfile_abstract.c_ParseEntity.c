
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_6__ {TYPE_1__* epairs; } ;


 int EPAIR_STRCMP (int ,char*) ;
 int Error (char*) ;
 int GetToken (int ) ;
 size_t MAX_MAP_ENTITIES ;
 TYPE_1__* ParseEPair () ;
 TYPE_2__* entities ;
 TYPE_2__* mapEnt ;
 size_t numEntities ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strcmp (int ,char*) ;
 int token ;

qboolean ParseEntity( void ){
 epair_t *e;



 if ( !GetToken( qtrue ) ) {
  return qfalse;
 }
 if ( strcmp( token, "{" ) ) {
  Error( "ParseEntity: { not found" );
 }
 if ( numEntities == MAX_MAP_ENTITIES ) {
  Error( "numEntities == MAX_MAP_ENTITIES" );
 }


 mapEnt = &entities[ numEntities ];
 numEntities++;


 while ( 1 )
 {
  if ( !GetToken( qtrue ) ) {
   Error( "ParseEntity: EOF without closing brace" );
  }
  if ( !EPAIR_STRCMP( token, "}" ) ) {
   break;
  }
  e = ParseEPair();
  e->next = mapEnt->epairs;
  mapEnt->epairs = e;
 }


 return qtrue;
}
