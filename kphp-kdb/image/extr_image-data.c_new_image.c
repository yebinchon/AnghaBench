
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_entry {int tp; int * a; } ;
typedef int Image ;


 int ft_image ;

__attribute__((used)) static void new_image (struct stack_entry *E, Image *I) {
  E->a = I;
  E->tp = ft_image;
}
