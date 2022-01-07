
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thumb2 {int width; int max_height; } ;



__attribute__((used)) static int thumbs2_want_resize (int width, int height, struct thumb2 *u) {
  return width >= u->width && height >= u->max_height;





}
