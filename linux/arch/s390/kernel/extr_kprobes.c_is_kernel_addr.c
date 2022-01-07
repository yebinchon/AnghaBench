
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _end ;

__attribute__((used)) static inline int is_kernel_addr(void *addr)
{
 return addr < (void *)_end;
}
