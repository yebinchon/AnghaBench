
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TASK_SIZE ;

__attribute__((used)) static inline bool is_ttbr0_addr(unsigned long addr)
{

 return addr < TASK_SIZE;
}
