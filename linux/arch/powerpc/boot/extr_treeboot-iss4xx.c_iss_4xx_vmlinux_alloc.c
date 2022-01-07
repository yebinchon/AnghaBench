
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ibm4xx_memstart ;

__attribute__((used)) static void *iss_4xx_vmlinux_alloc(unsigned long size)
{
 return (void *)ibm4xx_memstart;
}
