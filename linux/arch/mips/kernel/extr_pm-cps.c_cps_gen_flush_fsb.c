
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;
struct TYPE_2__ {unsigned int linesz; } ;
struct cpuinfo_mips {unsigned int processor_id; int cputype; TYPE_1__ dcache; } ;


 scalar_t__ CKSEG0 ;


 int Hit_Invalidate_D ;
 int Hit_Writeback_Inv_SD ;
 unsigned int PRID_REV_ENCODE_332 (int,int,int ) ;
 unsigned int PRID_REV_MASK ;
 int STYPE_SYNC ;
 int UASM_i_LA (int **,int ,long) ;
 int __get_cpu_type (int ) ;
 int t0 ;
 int t1 ;
 int t2 ;
 int t3 ;
 int uasm_build_label (struct uasm_label**,int *,int) ;
 int uasm_i_addiu (int **,int ,int ,unsigned int) ;
 int uasm_i_cache (int **,int ,unsigned int,int ) ;
 int uasm_i_ehb (int **) ;
 int uasm_i_lw (int **,int ,unsigned int,int ) ;
 int uasm_i_mfc0 (int **,int ,int,unsigned int) ;
 int uasm_i_mtc0 (int **,int ,int,unsigned int) ;
 int uasm_i_nop (int **) ;
 int uasm_i_sync (int **,int ) ;
 int uasm_il_beqz (int **,struct uasm_reloc**,int ,int) ;
 int zero ;

__attribute__((used)) static int cps_gen_flush_fsb(u32 **pp, struct uasm_label **pl,
        struct uasm_reloc **pr,
        const struct cpuinfo_mips *cpu_info,
        int lbl)
{
 unsigned i, fsb_size = 8;
 unsigned num_loads = (fsb_size * 3) / 2;
 unsigned line_stride = 2;
 unsigned line_size = cpu_info->dcache.linesz;
 unsigned perf_counter, perf_event;
 unsigned revision = cpu_info->processor_id & PRID_REV_MASK;





 switch (__get_cpu_type(cpu_info->cputype)) {
 case 129:
  perf_counter = 1;
  perf_event = 51;
  break;

 case 128:

  if (revision >= PRID_REV_ENCODE_332(1, 1, 0))
   return 0;


  return -1;

 default:

  return 0;
 }
 uasm_i_mfc0(pp, t2, 25, (perf_counter * 2) + 0);
 uasm_i_mfc0(pp, t3, 25, (perf_counter * 2) + 1);


 uasm_i_addiu(pp, t0, zero, (perf_event << 5) | 0xf);
 uasm_i_mtc0(pp, t0, 25, (perf_counter * 2) + 0);
 uasm_i_ehb(pp);
 uasm_i_mtc0(pp, zero, 25, (perf_counter * 2) + 1);
 uasm_i_ehb(pp);


 UASM_i_LA(pp, t0, (long)CKSEG0);


 uasm_build_label(pl, *pp, lbl);


 for (i = 0; i < num_loads; i++)
  uasm_i_lw(pp, zero, i * line_size * line_stride, t0);





 for (i = 0; i < num_loads; i++) {
  uasm_i_cache(pp, Hit_Invalidate_D,
        i * line_size * line_stride, t0);
  uasm_i_cache(pp, Hit_Writeback_Inv_SD,
        i * line_size * line_stride, t0);
 }


 uasm_i_sync(pp, STYPE_SYNC);
 uasm_i_ehb(pp);


 uasm_i_mfc0(pp, t1, 25, (perf_counter * 2) + 1);


 uasm_il_beqz(pp, pr, t1, lbl);
 uasm_i_nop(pp);


 uasm_i_mtc0(pp, t2, 25, (perf_counter * 2) + 0);
 uasm_i_ehb(pp);
 uasm_i_mtc0(pp, t3, 25, (perf_counter * 2) + 1);
 uasm_i_ehb(pp);

 return 0;
}
