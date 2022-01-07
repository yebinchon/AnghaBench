
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uc_hook ;
typedef int uc_engine ;
struct pt_entry {int flags; int offset; TYPE_1__* data; } ;
struct mem {int dummy; } ;
struct cpu_state {int fcw; int eflags; int eip; int esp; } ;
typedef int page_t ;
typedef int addr_t ;
struct TYPE_2__ {void* data; } ;


 int MEM_PAGES ;
 int PAGE_BITS ;
 int PAGE_SIZE ;
 int P_WRITE ;
 int UC_ARCH_X86 ;
 int UC_HOOK_INTR ;
 int UC_HOOK_MEM_UNMAPPED ;
 int UC_MODE_32 ;
 int UC_PROT_EXEC ;
 int UC_PROT_READ ;
 int UC_PROT_WRITE ;
 int UC_X86_REG_EFLAGS ;
 int UC_X86_REG_EIP ;
 int UC_X86_REG_ESP ;
 int UC_X86_REG_FPCW ;
 struct pt_entry* mem_pt (struct mem*,int) ;
 int setup_gdt (int *) ;
 int uc_hook_add (int *,int *,int ,int ,int *,int,int ) ;
 int uc_interrupt_callback ;
 int uc_mem_map (int *,int,int ,int) ;
 int uc_mem_write (int *,int,void*,int ) ;
 int uc_open (int ,int ,int **) ;
 int uc_setreg (int *,int ,int ) ;
 int uc_trycall (int ,char*) ;
 int uc_unmapped_callback ;

uc_engine *start_unicorn(struct cpu_state *cpu, struct mem *mem) {
    uc_engine *uc;
    uc_trycall(uc_open(UC_ARCH_X86, UC_MODE_32, &uc), "uc_open");


    uc_setreg(uc, UC_X86_REG_ESP, cpu->esp);
    uc_setreg(uc, UC_X86_REG_EIP, cpu->eip);
    uc_setreg(uc, UC_X86_REG_EFLAGS, cpu->eflags);
    uc_setreg(uc, UC_X86_REG_FPCW, cpu->fcw);




    for (page_t page = 0; page < MEM_PAGES; page++) {
        struct pt_entry *pt = mem_pt(mem, page);
        if (pt == ((void*)0))
            continue;
        int prot = UC_PROT_READ | UC_PROT_EXEC;

        if (pt->flags & P_WRITE) prot |= UC_PROT_WRITE;
        addr_t addr = page << PAGE_BITS;
        void *data = pt->data->data + pt->offset;
        uc_trycall(uc_mem_map(uc, addr, PAGE_SIZE, prot), "uc_mem_map");
        uc_trycall(uc_mem_write(uc, addr, data, PAGE_SIZE), "uc_mem_write");
    }


    setup_gdt(uc);


    uc_hook hook;
    uc_trycall(uc_hook_add(uc, &hook, UC_HOOK_INTR, uc_interrupt_callback, ((void*)0), 1, 0), "uc_hook_add");
    uc_trycall(uc_hook_add(uc, &hook, UC_HOOK_MEM_UNMAPPED, uc_unmapped_callback, ((void*)0), 1, 0), "uc_hook_add");

    return uc;
}
