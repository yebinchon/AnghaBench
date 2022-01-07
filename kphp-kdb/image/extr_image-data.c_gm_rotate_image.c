
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct forth_stack {int dummy; } ;
struct TYPE_6__ {scalar_t__ severity; } ;
typedef int Image ;
typedef TYPE_1__ ExceptionInfo ;


 int DestroyExceptionInfo (TYPE_1__*) ;
 int DestroyImage (int *) ;
 int GetExceptionInfo (TYPE_1__*) ;
 int * ReferenceImage (int *) ;
 int * RotateImage (int *,double,TYPE_1__*) ;
 scalar_t__ UndefinedException ;
 int assert (int) ;
 int gm_catch_exception (struct forth_stack*,TYPE_1__*) ;

__attribute__((used)) static Image *gm_rotate_image (struct forth_stack *st, Image *image, int angle) {
  assert (angle >= 0 && angle < 360);
  if (angle == 0) {
    return ReferenceImage (image);
  }
  ExceptionInfo exception;
  GetExceptionInfo (&exception);
  Image *r = RotateImage (image, (double) angle, &exception);
  if (exception.severity != UndefinedException) {
    gm_catch_exception (st, &exception);
    if (r != ((void*)0)) {
      DestroyImage (r);
    }
    return 0;
  }
  DestroyExceptionInfo (&exception);
  return r;
}
