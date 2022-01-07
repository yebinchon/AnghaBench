
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct forth_stack {int top; TYPE_1__* x; } ;
struct TYPE_2__ {char* a; } ;


 int check_type (struct forth_stack*,int ,char*) ;
 int ft_str ;

__attribute__((used)) static int pop_str (struct forth_stack *st, char **i, char *who) {
  if (!check_type (st, ft_str, who)) {
    return 0;
  }
  *i = st->x[st->top--].a;
  return 1;
}
