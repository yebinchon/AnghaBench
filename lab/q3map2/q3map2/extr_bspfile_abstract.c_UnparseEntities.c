
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; struct TYPE_4__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_5__ {TYPE_1__* epairs; } ;


 int Error (char*) ;
 int MAX_MAP_ENTSTRING ;
 int Q_stricmp (char const*,char*) ;
 int StripTrailing (char*) ;
 char* ValueForKey (TYPE_2__*,char*) ;
 char* bspEntData ;
 int bspEntDataSize ;
 TYPE_2__* entities ;
 int numBSPEntities ;
 int numEntities ;
 int sprintf (char*,char*,char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;

void UnparseEntities( void ){
 int i;
 char *buf, *end;
 epair_t *ep;
 char line[ 2048 ];
 char key[ 1024 ], value[ 1024 ];
 const char *value2;



 buf = bspEntData;
 end = buf;
 *end = 0;


 for ( i = 0; i < numBSPEntities && i < numEntities; i++ )
 {

  ep = entities[ i ].epairs;
  if ( ep == ((void*)0) ) {
   continue;

  }

  value2 = ValueForKey( &entities[ i ], "classname" );
  if ( !Q_stricmp( value2, "misc_model" ) ||
    !Q_stricmp( value2, "_decal" ) ||
    !Q_stricmp( value2, "_skybox" ) ) {
   continue;
  }


  strcat( end, "{\n" );
  end += 2;


  for ( ep = entities[ i ].epairs; ep != ((void*)0); ep = ep->next )
  {

   strcpy( key, ep->key );
   StripTrailing( key );
   strcpy( value, ep->value );
   StripTrailing( value );


   sprintf( line, "\"%s\" \"%s\"\n", key, value );
   strcat( end, line );
   end += strlen( line );
  }


  strcat( end,"}\n" );
  end += 2;


  if ( end > buf + MAX_MAP_ENTSTRING ) {
   Error( "Entity text too long" );
  }
 }


 bspEntDataSize = end - buf + 1;
}
