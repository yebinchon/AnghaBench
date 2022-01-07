
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct forth_stack {int top; } ;
struct TYPE_6__ {scalar_t__ severity; } ;
typedef int Image ;
typedef TYPE_1__ ExceptionInfo ;


 int DestroyExceptionInfo (TYPE_1__*) ;
 int DestroyImage (int *) ;
 void* FORTH_FAIL ;
 int GetExceptionInfo (TYPE_1__*) ;
 int LanczosFilter ;
 int NEXT ;
 int * ResizeImage (int *,int,int,int ,double,TYPE_1__*) ;
 scalar_t__ UndefinedException ;
 int free_stack (struct forth_stack*,int,int) ;
 int gm_catch_exception (struct forth_stack*,TYPE_1__*) ;
 int pop_image (struct forth_stack*,int **,char*) ;
 int pop_int (struct forth_stack*,int*,char*) ;
 int push_image (struct forth_stack*,int *) ;

__attribute__((used)) static void *resize_image (void **IP, struct forth_stack *st) {
  Image *image;
  int old_stack_top = st->top;
  int width, height;
  if (!pop_int (st, &height, "resize_image 3rd")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!pop_int (st, &width, "resize_image 2nd")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!pop_image (st, &image, "resize_image 1st")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  ExceptionInfo exception;
  GetExceptionInfo (&exception);
  Image *r = ResizeImage (image, width, height, LanczosFilter, 1.0, &exception);
  if (exception.severity != UndefinedException) {
    st->top = old_stack_top;
    gm_catch_exception (st, &exception);
    if (r != ((void*)0)) {
      DestroyImage (r);
    }
    return FORTH_FAIL;
  }
  DestroyExceptionInfo (&exception);

  free_stack (st, st->top + 1, old_stack_top);

  push_image (st, r);

  NEXT;
}
