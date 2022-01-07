
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct pvr_s {int dummy; } ;
struct device_node {int dummy; } ;
struct cpuinfo {void* use_instr; void* use_mult; void* use_fpu; int use_exc; int icache_line_length; int dcache_line_length; void* dcache_wb; int ver_code; } ;


 int AREA_OPTIMISED ;
 int CI (int ,int ) ;
 int DCACHE_ADDR_TAG_BITS ;
 int DCACHE_ALLOW_WR ;
 int DCACHE_BASEADDR ;
 int DCACHE_BYTE_SIZE ;
 int DCACHE_HIGHADDR ;
 int DEBUG_ENABLED ;
 int D_LMB ;
 int D_OPB ;
 int EDGE_IS_POSITIVE ;
 int ENDIAN ;
 int FSL_LINKS ;
 int ICACHE_ADDR_TAG_BITS ;
 int ICACHE_ALLOW_WR ;
 int ICACHE_BASEADDR ;
 int ICACHE_BYTE_SIZE ;
 int ICACHE_HIGHADDR ;
 int INTERRUPT_IS_EDGE ;
 int I_LMB ;
 int I_OPB ;
 int MMU_PRIVINS ;
 int NUMBER_OF_PC_BRK ;
 int NUMBER_OF_RD_ADDR_BRK ;
 int NUMBER_OF_WR_ADDR_BRK ;
 int PVR_DCACHE_LINE_LEN (struct pvr_s) ;
 void* PVR_DCACHE_USE_WRITEBACK (struct pvr_s) ;
 int PVR_DIV_ZERO_EXCEPTION (struct pvr_s) ;
 int PVR_DOPB_BUS_EXCEPTION (struct pvr_s) ;
 int PVR_FPU_EXCEPTION (struct pvr_s) ;
 int PVR_FSL_EXCEPTION (struct pvr_s) ;
 int PVR_ICACHE_LINE_LEN (struct pvr_s) ;
 int PVR_ILL_OPCODE_EXCEPTION (struct pvr_s) ;
 int PVR_IOPB_BUS_EXCEPTION (struct pvr_s) ;
 int PVR_OPCODE_0x0_ILLEGAL (struct pvr_s) ;
 int PVR_UNALIGNED_EXCEPTION (struct pvr_s) ;
 int PVR_USE_BARREL (struct pvr_s) ;
 int PVR_USE_DIV (struct pvr_s) ;
 int PVR_USE_FPU (struct pvr_s) ;
 int PVR_USE_FPU2 (struct pvr_s) ;
 int PVR_USE_HW_MUL (struct pvr_s) ;
 int PVR_USE_MSR_INSTR (struct pvr_s) ;
 int PVR_USE_MUL64 (struct pvr_s) ;
 int PVR_USE_PCMP_INSTR (struct pvr_s) ;
 int TARGET_FAMILY ;
 int USER1 ;
 int USER2 ;
 int USE_DCACHE ;
 int USE_ICACHE ;
 int USE_MMU ;
 int VERSION ;
 int area_optimised ;
 int dcache_base ;
 int dcache_high ;
 int dcache_size ;
 int dcache_tagbits ;
 int dcache_write ;
 int endian ;
 int err_printk (char*) ;
 int fpga_family_code ;
 int get_pvr (struct pvr_s*) ;
 int hw_debug ;
 int icache_base ;
 int icache_high ;
 int icache_size ;
 int icache_tagbits ;
 int icache_write ;
 int irq_edge ;
 int irq_positive ;
 int mmu ;
 int mmu_privins ;
 int num_fsl ;
 int num_pc_brk ;
 int num_rd_brk ;
 int num_wr_brk ;
 int pr_err (char*) ;
 int pvr_user1 ;
 int pvr_user2 ;
 int use_dcache ;
 int use_dlmb ;
 int use_dopb ;
 int use_icache ;
 int use_ilmb ;
 int use_iopb ;
 int ver_code ;

void set_cpuinfo_pvr_full(struct cpuinfo *ci, struct device_node *cpu)
{
 struct pvr_s pvr;
 u32 temp;
 get_pvr(&pvr);

 CI(ver_code, VERSION);
 if (!ci->ver_code) {
  pr_err("ERROR: MB has broken PVR regs -> use DTS setting\n");
  return;
 }

 temp = PVR_USE_BARREL(pvr) | PVR_USE_MSR_INSTR(pvr) |
  PVR_USE_PCMP_INSTR(pvr) | PVR_USE_DIV(pvr);
 if (ci->use_instr != temp)
  err_printk("BARREL, MSR, PCMP or DIV");
 ci->use_instr = temp;

 temp = PVR_USE_HW_MUL(pvr) | PVR_USE_MUL64(pvr);
 if (ci->use_mult != temp)
  err_printk("HW_MUL");
 ci->use_mult = temp;

 temp = PVR_USE_FPU(pvr) | PVR_USE_FPU2(pvr);
 if (ci->use_fpu != temp)
  err_printk("HW_FPU");
 ci->use_fpu = temp;

 ci->use_exc = PVR_OPCODE_0x0_ILLEGAL(pvr) |
   PVR_UNALIGNED_EXCEPTION(pvr) |
   PVR_ILL_OPCODE_EXCEPTION(pvr) |
   PVR_IOPB_BUS_EXCEPTION(pvr) |
   PVR_DOPB_BUS_EXCEPTION(pvr) |
   PVR_DIV_ZERO_EXCEPTION(pvr) |
   PVR_FPU_EXCEPTION(pvr) |
   PVR_FSL_EXCEPTION(pvr);

 CI(pvr_user1, USER1);
 CI(pvr_user2, USER2);

 CI(mmu, USE_MMU);
 CI(mmu_privins, MMU_PRIVINS);
 CI(endian, ENDIAN);

 CI(use_icache, USE_ICACHE);
 CI(icache_tagbits, ICACHE_ADDR_TAG_BITS);
 CI(icache_write, ICACHE_ALLOW_WR);
 ci->icache_line_length = PVR_ICACHE_LINE_LEN(pvr) << 2;
 CI(icache_size, ICACHE_BYTE_SIZE);
 CI(icache_base, ICACHE_BASEADDR);
 CI(icache_high, ICACHE_HIGHADDR);

 CI(use_dcache, USE_DCACHE);
 CI(dcache_tagbits, DCACHE_ADDR_TAG_BITS);
 CI(dcache_write, DCACHE_ALLOW_WR);
 ci->dcache_line_length = PVR_DCACHE_LINE_LEN(pvr) << 2;
 CI(dcache_size, DCACHE_BYTE_SIZE);
 CI(dcache_base, DCACHE_BASEADDR);
 CI(dcache_high, DCACHE_HIGHADDR);

 temp = PVR_DCACHE_USE_WRITEBACK(pvr);
 if (ci->dcache_wb != temp)
  err_printk("DCACHE WB");
 ci->dcache_wb = temp;

 CI(use_dopb, D_OPB);
 CI(use_iopb, I_OPB);
 CI(use_dlmb, D_LMB);
 CI(use_ilmb, I_LMB);
 CI(num_fsl, FSL_LINKS);

 CI(irq_edge, INTERRUPT_IS_EDGE);
 CI(irq_positive, EDGE_IS_POSITIVE);

 CI(area_optimised, AREA_OPTIMISED);

 CI(hw_debug, DEBUG_ENABLED);
 CI(num_pc_brk, NUMBER_OF_PC_BRK);
 CI(num_rd_brk, NUMBER_OF_RD_ADDR_BRK);
 CI(num_wr_brk, NUMBER_OF_WR_ADDR_BRK);

 CI(fpga_family_code, TARGET_FAMILY);
}
