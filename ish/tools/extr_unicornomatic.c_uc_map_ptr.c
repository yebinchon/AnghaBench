
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc_engine ;
typedef scalar_t__ dword_t ;
typedef scalar_t__ addr_t ;


 scalar_t__ PAGE_SIZE ;
 int UC_PROT_ALL ;
 int uc_mem_map_ptr (int *,scalar_t__,scalar_t__,int ,void*) ;
 int uc_trycall (int ,char*) ;
 int uc_unmap (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void uc_map_ptr(uc_engine *uc, addr_t start, void *mem, dword_t size) {
    uc_unmap(uc, start, size);
    for (addr_t addr = start; addr < start + size; addr += PAGE_SIZE) {
        uc_trycall(uc_mem_map_ptr(uc, addr, PAGE_SIZE, UC_PROT_ALL, mem + (addr - start)), "mmap emulation");
    }
}
