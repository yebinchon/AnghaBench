
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct forth_stack {int top; TYPE_1__* x; } ;
struct TYPE_2__ {int a; } ;


 int check_type (struct forth_stack*,int ,char*) ;
 int ft_int ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static int pop_int (struct forth_stack *st, int *i, char *who) {
  if (!check_type (st, ft_int, who)) {
    return 0;
  }
  memcpy (i, &st->x[st->top--].a, 4);
  return 1;
}
