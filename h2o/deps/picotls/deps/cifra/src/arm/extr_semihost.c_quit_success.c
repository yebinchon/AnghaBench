
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_EXIT ;
 scalar_t__ OP_EXIT_ARG_SUCCESS ;
 int semihost (int ,void*) ;

__attribute__((noreturn))
void quit_success(void)
{
  semihost(OP_EXIT, (void *) OP_EXIT_ARG_SUCCESS);
  while (1)
    ;
}
