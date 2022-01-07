
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * patches; int * brushes; } ;


 int SYS_WRN ;
 int SetKeyValue (TYPE_1__*,char*,char*) ;
 int Sys_FPrintf (int ,char*,char const*) ;
 char* ValueForKey (TYPE_1__*,char*) ;
 int atoi (char const*) ;
 TYPE_1__* entities ;
 int numEntities ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void SetCloneModelNumbers( void ){
 int i, j;
 int models;
 char modelValue[ 10 ];
 const char *value, *value2, *value3;



 models = 1;
 for ( i = 1; i < numEntities; i++ )
 {

  if ( entities[ i ].brushes == ((void*)0) && entities[ i ].patches == ((void*)0) ) {
   continue;
  }


  value = ValueForKey( &entities[ i ], "_clone" );
  if ( value[ 0 ] != '\0' ) {
   continue;
  }


  sprintf( modelValue, "*%d", models );
  SetKeyValue( &entities[ i ], "model", modelValue );


  models++;
 }


 for ( i = 1; i < numEntities; i++ )
 {

  if ( entities[ i ].brushes == ((void*)0) && entities[ i ].patches == ((void*)0) ) {
   continue;
  }


  value = ValueForKey( &entities[ i ], "_ins" );
  if ( value[ 0 ] == '\0' ) {
   value = ValueForKey( &entities[ i ], "_instance" );
  }
  if ( value[ 0 ] == '\0' ) {
   value = ValueForKey( &entities[ i ], "_clone" );
  }
  if ( value[ 0 ] == '\0' ) {
   continue;
  }


  for ( j = 0; j < numEntities; j++ )
  {

   value2 = ValueForKey( &entities[ j ], "_clonename" );
   if ( value2[ 0 ] == '\0' ) {
    continue;
   }


   if ( strcmp( value, value2 ) == 0 ) {

    value3 = ValueForKey( &entities[ j ], "model" );
    if ( value3[ 0 ] == '\0' ) {
     Sys_FPrintf( SYS_WRN, "WARNING: Cloned entity %s referenced entity without model\n", value2 );
     continue;
    }
    models = atoi( &value2[ 1 ] );


    sprintf( modelValue, "*%d", models );
    SetKeyValue( &entities[ i ], "model", modelValue );


    entities[ i ].brushes = ((void*)0);
    entities[ i ].patches = ((void*)0);
   }
  }
 }
}
