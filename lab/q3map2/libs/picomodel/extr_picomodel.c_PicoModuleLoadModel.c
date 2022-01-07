
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ (* canload ) (char*,int *,int) ;TYPE_2__* (* load ) (char*,int,int *,int) ;} ;
typedef TYPE_1__ picoModule_t ;
struct TYPE_9__ {TYPE_1__ const* module; } ;
typedef TYPE_2__ picoModel_t ;
typedef int picoByte_t ;


 scalar_t__ PICO_PMV_OK ;
 char* PicoGetModelFileName (TYPE_2__*) ;
 int PicoRemapModel (TYPE_2__*,char*) ;
 char* _pico_alloc (scalar_t__) ;
 int _pico_free (char*) ;
 int _pico_setfext (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ stub1 (char*,int *,int) ;
 TYPE_2__* stub2 (char*,int,int *,int) ;

picoModel_t *PicoModuleLoadModel( const picoModule_t* pm, char* fileName, picoByte_t* buffer, int bufSize, int frameNum ){
 char *modelFileName, *remapFileName;


 if ( pm->canload( fileName, buffer, bufSize ) == PICO_PMV_OK ) {

  picoModel_t* model = pm->load( fileName, frameNum, buffer, bufSize );
  if ( model == ((void*)0) ) {
   return ((void*)0);
  }


  model->module = pm;


  modelFileName = PicoGetModelFileName( model );


  if ( strlen( modelFileName ) ) {

   remapFileName = _pico_alloc( strlen( modelFileName ) + 20 );
   if ( remapFileName != ((void*)0) ) {

    strcpy( remapFileName, modelFileName );
    _pico_setfext( remapFileName, "remap" );


    PicoRemapModel( model, remapFileName );


    _pico_free( remapFileName );
   }
  }

  return model;
 }

 return ((void*)0);
}
