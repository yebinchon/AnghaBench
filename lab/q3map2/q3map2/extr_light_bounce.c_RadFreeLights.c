
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * w; struct TYPE_4__* next; } ;
typedef TYPE_1__ light_t ;


 int FreeWinding (int *) ;
 int free (TYPE_1__*) ;
 TYPE_1__* lights ;
 scalar_t__ numLights ;

void RadFreeLights( void ){
 light_t *light, *next;



 for ( light = lights; light; light = next )
 {
  next = light->next;
  if ( light->w != ((void*)0) ) {
   FreeWinding( light->w );
  }
  free( light );
 }
 numLights = 0;
 lights = ((void*)0);
}
