
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSMesaDestroyContext (int ) ;
 int free (int *) ;
 int osmesa_ctx ;
 int * osmesa_frame_buffer ;

void GLimp_Shutdown(void) {
  OSMesaDestroyContext(osmesa_ctx);
  free(osmesa_frame_buffer);
  osmesa_frame_buffer = ((void*)0);
}
