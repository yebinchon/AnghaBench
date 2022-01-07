
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_entry {int tp; int a; } ;


 int ft_int ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static void new_int (struct stack_entry *E, int i) {
  memcpy (&E->a, &i, 4);
  E->tp = ft_int;
}
