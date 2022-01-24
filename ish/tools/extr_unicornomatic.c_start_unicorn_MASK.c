#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uc_hook ;
typedef  int /*<<< orphan*/  uc_engine ;
struct pt_entry {int flags; int offset; TYPE_1__* data; } ;
struct mem {int dummy; } ;
struct cpu_state {int /*<<< orphan*/  fcw; int /*<<< orphan*/  eflags; int /*<<< orphan*/  eip; int /*<<< orphan*/  esp; } ;
typedef  int page_t ;
typedef  int addr_t ;
struct TYPE_2__ {void* data; } ;

/* Variables and functions */
 int MEM_PAGES ; 
 int PAGE_BITS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int P_WRITE ; 
 int /*<<< orphan*/  UC_ARCH_X86 ; 
 int /*<<< orphan*/  UC_HOOK_INTR ; 
 int /*<<< orphan*/  UC_HOOK_MEM_UNMAPPED ; 
 int /*<<< orphan*/  UC_MODE_32 ; 
 int UC_PROT_EXEC ; 
 int UC_PROT_READ ; 
 int UC_PROT_WRITE ; 
 int /*<<< orphan*/  UC_X86_REG_EFLAGS ; 
 int /*<<< orphan*/  UC_X86_REG_EIP ; 
 int /*<<< orphan*/  UC_X86_REG_ESP ; 
 int /*<<< orphan*/  UC_X86_REG_FPCW ; 
 struct pt_entry* FUNC0 (struct mem*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uc_interrupt_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uc_unmapped_callback ; 

uc_engine *FUNC8(struct cpu_state *cpu, struct mem *mem) {
    uc_engine *uc;
    FUNC7(FUNC5(UC_ARCH_X86, UC_MODE_32, &uc), "uc_open");

    // copy registers
    FUNC6(uc, UC_X86_REG_ESP, cpu->esp);
    FUNC6(uc, UC_X86_REG_EIP, cpu->eip);
    FUNC6(uc, UC_X86_REG_EFLAGS, cpu->eflags);
    FUNC6(uc, UC_X86_REG_FPCW, cpu->fcw);

    // copy memory
    // XXX unicorn has a ?bug? where setting up 334 mappings takes five
    // seconds on my raspi. it seems to be accidentally quadratic (dot tumblr dot com)
    for (page_t page = 0; page < MEM_PAGES; page++) {
        struct pt_entry *pt = FUNC0(mem, page);
        if (pt == NULL)
            continue;
        int prot = UC_PROT_READ | UC_PROT_EXEC;
        // really only the write bit is meaningful (FIXME)
        if (pt->flags & P_WRITE) prot |= UC_PROT_WRITE;
        addr_t addr = page << PAGE_BITS;
        void *data = pt->data->data + pt->offset;
        FUNC7(FUNC3(uc, addr, PAGE_SIZE, prot), "uc_mem_map");
        FUNC7(FUNC4(uc, addr, data, PAGE_SIZE), "uc_mem_write");
    }

    // set up some sort of gdt, because we need gs to work for thread locals
    FUNC1(uc);

    // set up exception handler
    uc_hook hook;
    FUNC7(FUNC2(uc, &hook, UC_HOOK_INTR, uc_interrupt_callback, NULL, 1, 0), "uc_hook_add");
    FUNC7(FUNC2(uc, &hook, UC_HOOK_MEM_UNMAPPED, uc_unmapped_callback, NULL, 1, 0), "uc_hook_add");

    return uc;
}