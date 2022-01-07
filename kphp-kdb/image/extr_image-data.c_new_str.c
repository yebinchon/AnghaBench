
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_entry {char* a; int tp; } ;


 int ft_str ;
 char* strdup (char*) ;

__attribute__((used)) static void new_str (struct stack_entry *E, char *str, int clone) {
  E->a = clone ? strdup (str) : str;
  E->tp = ft_str;
}
