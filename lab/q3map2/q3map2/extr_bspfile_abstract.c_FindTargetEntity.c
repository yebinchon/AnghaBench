
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entity_t ;


 char* ValueForKey (int *,char*) ;
 int * entities ;
 int numEntities ;
 int strcmp (char const*,char const*) ;

entity_t *FindTargetEntity( const char *target ){
 int i;
 const char *n;



 for ( i = 0; i < numEntities; i++ )
 {
  n = ValueForKey( &entities[ i ], "targetname" );
  if ( !strcmp( n, target ) ) {
   return &entities[ i ];
  }
 }


 return ((void*)0);
}
