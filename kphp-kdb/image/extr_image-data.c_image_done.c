
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DestroyMagick () ;
 scalar_t__ image_initialized ;

void image_done (void) {
  if (image_initialized) {
    DestroyMagick ();
    image_initialized = 0;
  }
}
