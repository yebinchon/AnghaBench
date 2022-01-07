
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc_engine ;
typedef scalar_t__ dword_t ;
typedef scalar_t__ addr_t ;


 scalar_t__ PAGE_SIZE ;
 int uc_mem_unmap (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void uc_unmap(uc_engine *uc, addr_t start, dword_t size) {
    for (addr_t addr = start; addr < start + size; addr += PAGE_SIZE) {
        uc_mem_unmap(uc, addr, PAGE_SIZE);
    }
}
