
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * name; } ;
typedef TYPE_1__ picoSurface_t ;
struct TYPE_6__ {int numSurfaces; TYPE_1__** surface; } ;
typedef TYPE_2__ picoModel_t ;


 int _pico_stricmp (char*,int *) ;
 int strcmp (char*,int *) ;

picoSurface_t *PicoFindSurface(
 picoModel_t *model, char *name, int caseSensitive ){
 int i;


 if ( model == ((void*)0) || name == ((void*)0) ) {
  return ((void*)0);
 }


 for ( i = 0; i < model->numSurfaces; i++ )
 {

  if ( model->surface[ i ] == ((void*)0) ||
    model->surface[ i ]->name == ((void*)0) ) {
   continue;
  }


  if ( caseSensitive ) {
   if ( !strcmp( name,model->surface[ i ]->name ) ) {
    return model->surface[ i ];
   }
  }
  else {
   if ( !_pico_stricmp( name,model->surface[ i ]->name ) ) {
    return model->surface[ i ];
   }
  }
 }

 return ((void*)0);
}
