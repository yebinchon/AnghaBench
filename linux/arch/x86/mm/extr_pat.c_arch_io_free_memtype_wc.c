
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ resource_size_t ;


 int io_free_memtype (scalar_t__,scalar_t__) ;

void arch_io_free_memtype_wc(resource_size_t start, resource_size_t size)
{
 io_free_memtype(start, start + size);
}
