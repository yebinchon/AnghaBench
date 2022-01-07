
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_8__ {struct TYPE_8__* value; struct TYPE_8__* key; struct TYPE_8__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_9__ {TYPE_1__* epairs; } ;
typedef TYPE_2__ entity_t ;


 int Error (char*,int,...) ;
 int IntForKey (TYPE_2__*,char*) ;
 int LS_NONE ;
 int LS_NORMAL ;
 int MAX_SWITCHED_LIGHTS ;
 scalar_t__ Q_strncasecmp (char const*,char*,int) ;
 int SYS_VRB ;
 int SetKeyValue (TYPE_2__*,char*,char*) ;
 int Sys_FPrintf (int ,char*,int ) ;
 char* ValueForKey (TYPE_2__*,char*) ;
 TYPE_2__* entities ;
 int free (TYPE_1__*) ;
 int numEntities ;
 int numStrippedLights ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int sprintf (char*,char*,int) ;
 int strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;

void SetLightStyles( void ){
 int i, j, style, numStyles;
 qboolean keepLights;
 qboolean noRadiosityLight;
 const char *t;
 entity_t *e;
 epair_t *ep, *next;
 char value[ 10 ];
 char lightTargets[ MAX_SWITCHED_LIGHTS ][ 64 ];
 int lightStyles[ MAX_SWITCHED_LIGHTS ];



 t = ValueForKey( &entities[ 0 ], "_keepLights" );
 keepLights = ( t[ 0 ] == '1' ) ? qtrue : qfalse;


 numStyles = 0;
 for ( i = 1; i < numEntities; i++ )
 {
  e = &entities[ i ];

  t = ValueForKey( e, "classname" );
  if ( Q_strncasecmp( t, "light", 5 ) ) {
   continue;
  }
  t = ValueForKey( e, "noradiosity" );
  noRadiosityLight = ( t[ 0 ] == '1' ) ? qtrue : qfalse;
  t = ValueForKey( e, "targetname" );
  if ( t[ 0 ] == '\0' ) {



   if ( keepLights == qfalse && noRadiosityLight == qfalse ) {
    ep = e->epairs;
    while ( ep != ((void*)0) )
    {
     next = ep->next;
     free( ep->key );
     free( ep->value );
     free( ep );
     ep = next;
    }
    e->epairs = ((void*)0);
    numStrippedLights++;
   }


   continue;
  }


  style = IntForKey( e, "style" );
  if ( style < LS_NORMAL || style > LS_NONE ) {
   Error( "Invalid lightstyle (%d) on entity %d", style, i );
  }


  for ( j = 0; j < numStyles; j++ )
   if ( lightStyles[ j ] == style && !strcmp( lightTargets[ j ], t ) ) {
    break;
   }


  if ( j >= numStyles ) {
   if ( numStyles == MAX_SWITCHED_LIGHTS ) {
    Error( "MAX_SWITCHED_LIGHTS (%d) exceeded, reduce the number of lights with targetnames", MAX_SWITCHED_LIGHTS );
   }
   strcpy( lightTargets[ j ], t );
   lightStyles[ j ] = style;
   numStyles++;
  }


  sprintf( value, "%d", 32 + j );
  SetKeyValue( e, "style", value );


  if ( style != LS_NORMAL ) {
   sprintf( value, "%d", style );
   SetKeyValue( e, "switch_style", value );
  }
 }


 Sys_FPrintf( SYS_VRB, "%9d light entities stripped\n", numStrippedLights );
}
