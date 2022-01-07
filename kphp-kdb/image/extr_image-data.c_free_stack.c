
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_stack {int * x; } ;


 int free_stack_entry (int *) ;

__attribute__((used)) static void free_stack (struct forth_stack *st, int bottom, int top) {
  int i;
  for (i = bottom; i <= top; i++) {
    free_stack_entry (&st->x[i]);
  }
}
