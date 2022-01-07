
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ refCount; scalar_t__ height; scalar_t__ width; int * pixels; int * filename; int * name; } ;
typedef TYPE_1__ image_t ;


 int free (int *) ;
 int numImages ;

void ImageFree( image_t *image ){

 if ( image == ((void*)0) ) {
  return;
 }


 image->refCount--;


 if ( image->refCount <= 0 ) {
  if ( image->name != ((void*)0) ) {
   free( image->name );
  }
  image->name = ((void*)0);
  if ( image->filename != ((void*)0) ) {
   free( image->filename );
  }
  image->filename = ((void*)0);
  free( image->pixels );
  image->width = 0;
  image->height = 0;
  numImages--;
 }
}
