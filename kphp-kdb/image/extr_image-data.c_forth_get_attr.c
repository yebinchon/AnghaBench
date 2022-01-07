
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct forth_stack {int top; int * x; } ;
struct TYPE_3__ {int length; int value; } ;
typedef TYPE_1__ ImageAttribute ;
typedef int Image ;


 void* FORTH_FAIL ;
 TYPE_1__* GetImageAttribute (int *,char*) ;
 int NEXT ;
 int assert (char*) ;
 int free_stack (struct forth_stack*,int,int) ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 int new_str (int *,char*,int ) ;
 int pop_image (struct forth_stack*,int **,char*) ;
 int pop_str (struct forth_stack*,char**,char*) ;

__attribute__((used)) static void *forth_get_attr (void **IP, struct forth_stack *st) {
  char *attr;
  Image *image;
  int old_stack_top = st->top;

  if (!pop_str (st, &attr, "getattr: 2nd isn't str")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!pop_image (st, &image, "getattr: 1st isn't image")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  free_stack (st, st->top + 1, old_stack_top);

  const ImageAttribute *a = GetImageAttribute (image, attr);
  if (a == ((void*)0)) {
    st->top++;
    new_str (&st->x[st->top], "NULL", 0);
  } else {
    char *b = malloc (a->length+1); assert (b);
    memcpy (b, a->value, a->length);
    b[a->length] = 0;
    st->top++;
    new_str (&st->x[st->top], b, 0);
  }

  NEXT;
}
