
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int phys_addr_t ;


 int iounmap (void*) ;
 int release_mem_region (int ,int) ;

__attribute__((used)) static void unmap_region(void *addr, u64 start, int len)
{
 iounmap(addr);
 release_mem_region((phys_addr_t)start, len);
}
