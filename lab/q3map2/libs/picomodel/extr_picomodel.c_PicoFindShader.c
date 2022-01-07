
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * name; } ;
typedef TYPE_1__ picoShader_t ;
struct TYPE_6__ {int numShaders; TYPE_1__** shader; } ;
typedef TYPE_2__ picoModel_t ;


 int _pico_stricmp (char*,int *) ;
 int strcmp (char*,int *) ;

picoShader_t *PicoFindShader( picoModel_t *model, char *name, int caseSensitive ){
 int i;


 if ( model == ((void*)0) || name == ((void*)0) ) {
  return ((void*)0);
 }


 for ( i = 0; i < model->numShaders; i++ )
 {

  if ( model->shader[ i ] == ((void*)0) ||
    model->shader[ i ]->name == ((void*)0) ) {
   continue;
  }


  if ( caseSensitive ) {
   if ( !strcmp( name, model->shader[ i ]->name ) ) {
    return model->shader[ i ];
   }
  }
  else if ( !_pico_stricmp( name, model->shader[ i ]->name ) ) {
   return model->shader[ i ];
  }
 }


 return ((void*)0);
}
