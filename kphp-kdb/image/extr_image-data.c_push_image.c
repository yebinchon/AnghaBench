
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_stack {size_t top; int * x; } ;
typedef int Image ;


 int new_image (int *,int *) ;

__attribute__((used)) static void push_image (struct forth_stack *st, Image *image) {
  st->top++;
  new_image (&st->x[st->top], image);
}
