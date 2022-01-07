
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* inMemory; void* defaultSound; } ;
typedef TYPE_1__ sfx_t ;


 int S_LoadSound (TYPE_1__*) ;
 void* qtrue ;

void S_memoryLoad(sfx_t *sfx) {

 if ( !S_LoadSound ( sfx ) ) {

  sfx->defaultSound = qtrue;
 }
 sfx->inMemory = qtrue;
}
