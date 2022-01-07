
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_stack {int top; } ;
typedef int Image ;


 void* FORTH_FAIL ;
 int NEXT ;
 void* failf (struct forth_stack*,char*) ;
 int free_stack (struct forth_stack*,int,int) ;
 int * gm_rotate_image (struct forth_stack*,int *,int) ;
 int pop_image (struct forth_stack*,int **,char*) ;
 int pop_int (struct forth_stack*,int*,char*) ;
 int push_image (struct forth_stack*,int *) ;

__attribute__((used)) static void *rotate_image (void **IP, struct forth_stack *st) {
  Image *image;
  int old_stack_top = st->top;
  int angle;

  if (!pop_int (st, &angle, "rotate_image 2nd")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!pop_image (st, &image, "rotate_image 1st")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  angle %= 4;
  if (angle < 0) {
    angle += 4;
  }
  Image *r = gm_rotate_image (st, image, 90 * angle);
  if (r == ((void*)0)) {
    st->top = old_stack_top;
    return failf (st, "rotate_image: gm_rotate_image fail");
  }

  free_stack (st, st->top + 1, old_stack_top);

  push_image (st, r);

  NEXT;
}
