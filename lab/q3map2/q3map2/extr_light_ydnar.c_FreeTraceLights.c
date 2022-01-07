
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lights; } ;
typedef TYPE_1__ trace_t ;


 int free (int *) ;

void FreeTraceLights( trace_t *trace ){
 if ( trace->lights != ((void*)0) ) {
  free( trace->lights );
 }
}
