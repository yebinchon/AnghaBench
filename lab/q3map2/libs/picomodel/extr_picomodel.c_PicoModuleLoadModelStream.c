
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * defaultExts; } ;
typedef TYPE_1__ picoModule_t ;
typedef int picoModel_t ;
typedef char picoByte_t ;
typedef scalar_t__ (* PicoInputStreamReadFunc ) (void*,char*,size_t) ;


 int PICO_ERROR ;
 int * PicoModuleLoadModel (TYPE_1__ const*,char*,char*,int,int) ;
 char* _pico_alloc (size_t) ;
 int _pico_free (char*) ;
 int _pico_printf (int ,char*) ;
 int strncpy (char*,int ,int) ;

picoModel_t *PicoModuleLoadModelStream( const picoModule_t* module, void* inputStream, PicoInputStreamReadFunc inputStreamRead, size_t streamLength, int frameNum ) {
 picoModel_t *model;
 picoByte_t *buffer;
 int bufSize;


 model = ((void*)0);

 if ( inputStream == ((void*)0) ) {
  _pico_printf( PICO_ERROR, "PicoLoadModel: invalid input stream (inputStream == NULL)" );
  return ((void*)0);
 }

 if ( inputStreamRead == ((void*)0) ) {
  _pico_printf( PICO_ERROR, "PicoLoadModel: invalid input stream (inputStreamRead == NULL) ");
  return ((void*)0);
 }

 buffer = _pico_alloc( streamLength + 1 );

 bufSize = (int)inputStreamRead( inputStream, buffer, streamLength );
 buffer[ bufSize ] = '\0';

 {

  char fileName[128];
  fileName[0] = '.';
  strncpy( fileName + 1, module->defaultExts[ 0 ], 126 );
  fileName[127] = '\0';
  model = PicoModuleLoadModel( module, fileName, buffer, bufSize, frameNum );
 }


 if ( model != 0 ) {
  _pico_free( buffer );
 }

 return model;
}
