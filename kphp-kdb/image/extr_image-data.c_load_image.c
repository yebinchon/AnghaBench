
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_stack {int top; } ;
typedef int Image ;


 void* FORTH_FAIL ;
 int NEXT ;
 int free_stack (struct forth_stack*,int,int) ;
 int * gm_read_image (struct forth_stack*,char*) ;
 int pop_str (struct forth_stack*,char**,char*) ;
 int push_image (struct forth_stack*,int *) ;
 int vkprintf (int,char*) ;

__attribute__((used)) static void *load_image (void **IP, struct forth_stack *st) {
  vkprintf (3, "load_image\n");
  char *filename;
  int old_stack_top = st->top;
  if (!pop_str (st, &filename, "read_image 1st")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }
  Image *r = gm_read_image (st, filename);

  if (r == ((void*)0)) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  free_stack (st, st->top + 1, old_stack_top);

  push_image (st, r);

  NEXT;
}
