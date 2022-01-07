
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ image_t ;


 int ImageInit () ;
 int MAX_IMAGES ;
 int StripExtension (char*) ;
 TYPE_1__* images ;
 int strcmp (char*,int *) ;
 int strcpy (char*,char const*) ;

image_t *ImageFind( const char *filename ){
 int i;
 char name[ 1024 ];



 ImageInit();


 if ( filename == ((void*)0) || filename[ 0 ] == '\0' ) {
  return ((void*)0);
 }


 strcpy( name, filename );
 StripExtension( name );


 for ( i = 0; i < MAX_IMAGES; i++ )
 {
  if ( images[ i ].name != ((void*)0) && !strcmp( name, images[ i ].name ) ) {
   return &images[ i ];
  }
 }


 return ((void*)0);
}
