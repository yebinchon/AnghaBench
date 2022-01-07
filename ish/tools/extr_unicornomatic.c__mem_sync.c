
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc_engine ;
struct tlb {int dummy; } ;
typedef int dword_t ;
typedef int addr_t ;


 int tlb_read (struct tlb*,int ,char*,int) ;
 int uc_write (int *,int ,char*,int) ;

__attribute__((used)) static void _mem_sync(struct tlb *tlb, uc_engine *uc, addr_t addr, dword_t size) {
    char buf[size];
    tlb_read(tlb, addr, buf, size);
    uc_write(uc, addr, buf, size);
}
