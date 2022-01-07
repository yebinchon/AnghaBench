
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int limit; int base; } ;
typedef TYPE_1__ uc_x86_mmr ;
typedef int uc_engine ;
struct gdt_entry {int limit0; int limit1; int granularity; int system; int type; int db; int present; int dpl; } ;
typedef int gdt ;


 int GDT_ADDR ;
 int PAGE_SIZE ;
 int UC_PROT_READ ;
 int UC_X86_REG_CS ;
 int UC_X86_REG_DS ;
 int UC_X86_REG_ES ;
 int UC_X86_REG_FS ;
 int UC_X86_REG_GDTR ;
 int UC_X86_REG_SS ;
 int uc_mem_map (int *,int ,int ,int ) ;
 int uc_mem_write (int *,int ,struct gdt_entry**,int) ;
 int uc_reg_write (int *,int ,TYPE_1__*) ;
 int uc_setreg (int *,int ,int) ;
 int uc_trycall (int ,char*) ;

__attribute__((used)) static void setup_gdt(uc_engine *uc) {

    struct gdt_entry gdt[13] = {};


    gdt[1].limit0 = 0xffff; gdt[1].limit1 = 0xf; gdt[1].granularity = 1;
    gdt[1].system = 1; gdt[1].type = 0xf; gdt[1].db = 1; gdt[1].present = 1;

    gdt[2] = gdt[1]; gdt[2].type = 0x3;

    gdt[12] = gdt[2]; gdt[12].dpl = 3;


    uc_trycall(uc_mem_map(uc, GDT_ADDR, PAGE_SIZE, UC_PROT_READ), "map gdt");
    uc_trycall(uc_mem_write(uc, GDT_ADDR, &gdt, sizeof(gdt)), "write gdt");


    uc_x86_mmr gdtr = {.base = GDT_ADDR, .limit = sizeof(gdt)};
    uc_trycall(uc_reg_write(uc, UC_X86_REG_GDTR, &gdtr), "write gdtr");
    uc_setreg(uc, UC_X86_REG_CS, 1<<3);
    uc_setreg(uc, UC_X86_REG_DS, 2<<3);
    uc_setreg(uc, UC_X86_REG_ES, 2<<3);
    uc_setreg(uc, UC_X86_REG_FS, 2<<3);
    uc_setreg(uc, UC_X86_REG_SS, 2<<3);
}
