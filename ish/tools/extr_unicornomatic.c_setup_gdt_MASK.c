#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int limit; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ uc_x86_mmr ;
typedef  int /*<<< orphan*/  uc_engine ;
struct gdt_entry {int limit0; int limit1; int granularity; int system; int type; int db; int present; int dpl; } ;
typedef  int /*<<< orphan*/  gdt ;

/* Variables and functions */
 int /*<<< orphan*/  GDT_ADDR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  UC_PROT_READ ; 
 int /*<<< orphan*/  UC_X86_REG_CS ; 
 int /*<<< orphan*/  UC_X86_REG_DS ; 
 int /*<<< orphan*/  UC_X86_REG_ES ; 
 int /*<<< orphan*/  UC_X86_REG_FS ; 
 int /*<<< orphan*/  UC_X86_REG_GDTR ; 
 int /*<<< orphan*/  UC_X86_REG_SS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gdt_entry**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(uc_engine *uc) {
    // construct gdt
    struct gdt_entry gdt[13] = {};
    // descriptor 0 can't be used
    // descriptor 1 = all of memory as code
    gdt[1].limit0 = 0xffff; gdt[1].limit1 = 0xf; gdt[1].granularity = 1;
    gdt[1].system = 1; gdt[1].type = 0xf; gdt[1].db = 1; gdt[1].present = 1;
    // descriptor 2 = all of memory as data
    gdt[2] = gdt[1]; gdt[2].type = 0x3;
    // descriptor 12 = thread locals
    gdt[12] = gdt[2]; gdt[12].dpl = 3;

    // put gdt into memory, somewhere, idgaf where
    FUNC4(FUNC0(uc, GDT_ADDR, PAGE_SIZE, UC_PROT_READ), "map gdt");
    FUNC4(FUNC1(uc, GDT_ADDR, &gdt, sizeof(gdt)), "write gdt");

    // load segment registers
    uc_x86_mmr gdtr = {.base = GDT_ADDR, .limit = sizeof(gdt)};
    FUNC4(FUNC2(uc, UC_X86_REG_GDTR, &gdtr), "write gdtr");
    FUNC3(uc, UC_X86_REG_CS, 1<<3);
    FUNC3(uc, UC_X86_REG_DS, 2<<3);
    FUNC3(uc, UC_X86_REG_ES, 2<<3);
    FUNC3(uc, UC_X86_REG_FS, 2<<3);
    FUNC3(uc, UC_X86_REG_SS, 2<<3);
}