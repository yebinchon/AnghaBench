
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct forth_stack {int top; TYPE_1__* x; } ;
struct TYPE_2__ {scalar_t__ a; } ;
typedef int Image ;


 int check_type (struct forth_stack*,int ,char*) ;
 int ft_image ;

__attribute__((used)) static int pop_image (struct forth_stack *st, Image **image, char *who) {
  if (!check_type (st, ft_image, who)) {
    return 0;
  }
  *image = (Image *) st->x[st->top--].a;
  return 1;
}
