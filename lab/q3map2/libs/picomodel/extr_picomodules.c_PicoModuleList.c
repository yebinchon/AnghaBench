
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoModule_t ;


 int ** picoModules ;

const picoModule_t **PicoModuleList( int *numModules ) {

 if ( numModules != ((void*)0) ) {
  for ( ( *numModules ) = 0; picoModules[ *numModules ] != ((void*)0); ( *numModules )++ ) ;
 }


 return (const picoModule_t**) picoModules;
}
