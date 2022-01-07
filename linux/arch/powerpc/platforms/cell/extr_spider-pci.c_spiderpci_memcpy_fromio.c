
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCI_IO_ADDR ;


 int __do_memcpy_fromio (void*,int const,unsigned long) ;
 int iowa_mem_find_bus (int const) ;
 int spiderpci_io_flush (int ) ;

__attribute__((used)) static void spiderpci_memcpy_fromio(void *dest, const PCI_IO_ADDR src,
        unsigned long n)
{
 __do_memcpy_fromio(dest, src, n);
 spiderpci_io_flush(iowa_mem_find_bus(src));
}
