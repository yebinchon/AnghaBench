
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * load; int * canload; } ;
typedef TYPE_1__ picoModule_t ;
typedef int picoModel_t ;
typedef int picoByte_t ;


 int PICO_ERROR ;
 TYPE_1__** PicoModuleList (int *) ;
 int * PicoModuleLoadModel (TYPE_1__ const*,char*,int *,int,int) ;
 int _pico_free_file (int *) ;
 int _pico_load_file (char*,int **,int*) ;
 int _pico_printf (int ,char*,...) ;

picoModel_t *PicoLoadModel( char *fileName, int frameNum ){
 const picoModule_t **modules, *pm;
 picoModel_t *model;
 picoByte_t *buffer;
 int bufSize;



 model = ((void*)0);


 if ( fileName == ((void*)0) ) {
  _pico_printf( PICO_ERROR, "PicoLoadModel: No filename given (fileName == NULL)" );
  return ((void*)0);
 }


 _pico_load_file( fileName, &buffer, &bufSize );
 if ( bufSize < 0 ) {
  _pico_printf( PICO_ERROR, "PicoLoadModel: Failed loading model %s", fileName );
  return ((void*)0);
 }


 modules = PicoModuleList( ((void*)0) );



 for ( ; *modules != ((void*)0); modules++ )
 {

  pm = *modules;


  if ( pm == ((void*)0) ) {
   break;
  }


  if ( pm->canload == ((void*)0) || pm->load == ((void*)0) ) {
   continue;
  }

  model = PicoModuleLoadModel( pm, fileName, buffer, bufSize, frameNum );
  if ( model != ((void*)0) ) {

   break;
  }
 }


 if ( buffer ) {
  _pico_free_file( buffer );
 }

 return model;
}
