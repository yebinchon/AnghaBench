
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ in_sched_functions (unsigned int) ;

__attribute__((used)) static int __get_first_nonsched(unsigned int address, void *unused)
{
 if (in_sched_functions(address))
  return 0;

 return -1;
}
