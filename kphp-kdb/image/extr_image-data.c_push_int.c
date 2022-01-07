
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_stack {size_t top; int * x; } ;


 int new_int (int *,int) ;

__attribute__((used)) static void push_int (struct forth_stack *st, int x) {
  st->top++;
  new_int (&st->x[st->top], x);
}
