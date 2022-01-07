
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oprofile_add_trace (unsigned long) ;

__attribute__((used)) static void backtrace_address(void *data, unsigned long addr, int reliable)
{
 unsigned int *depth = data;

 if ((*depth)--)
  oprofile_add_trace(addr);
}
