
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entity_t ;


 char* ValueForKey (int const*,char*) ;
 int atoi (char const*) ;

void GetEntityShadowFlags( const entity_t *ent, const entity_t *ent2, int *castShadows, int *recvShadows ){
 const char *value;



 if ( castShadows != ((void*)0) ) {
  value = ValueForKey( ent, "_castShadows" );
  if ( value[ 0 ] == '\0' ) {
   value = ValueForKey( ent, "_cs" );
  }
  if ( value[ 0 ] == '\0' ) {
   value = ValueForKey( ent2, "_castShadows" );
  }
  if ( value[ 0 ] == '\0' ) {
   value = ValueForKey( ent2, "_cs" );
  }
  if ( value[ 0 ] != '\0' ) {
   *castShadows = atoi( value );
  }
 }


 if ( recvShadows != ((void*)0) ) {
  value = ValueForKey( ent, "_receiveShadows" );
  if ( value[ 0 ] == '\0' ) {
   value = ValueForKey( ent, "_rs" );
  }
  if ( value[ 0 ] == '\0' ) {
   value = ValueForKey( ent2, "_receiveShadows" );
  }
  if ( value[ 0 ] == '\0' ) {
   value = ValueForKey( ent2, "_rs" );
  }
  if ( value[ 0 ] != '\0' ) {
   *recvShadows = atoi( value );
  }
 }
}
