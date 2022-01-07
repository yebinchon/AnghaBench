
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr_s {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {unsigned long* pvr; } ;


 size_t GDB_BTR ;
 unsigned int GDB_PVR ;
 size_t GDB_REDR ;
 size_t GDB_RPID ;
 size_t GDB_RTLBHI ;
 size_t GDB_RTLBLO ;
 size_t GDB_RTLBX ;
 size_t GDB_RZPR ;
 TYPE_1__ pvr ;

void pt_regs_to_gdb_regs(unsigned long *gdb_regs, struct pt_regs *regs)
{
 unsigned int i;
 unsigned long *pt_regb = (unsigned long *)regs;
 int temp;


 for (i = 0; i < (sizeof(struct pt_regs) / 4) - 1; i++)
  gdb_regs[i] = pt_regb[i];


 __asm__ __volatile__ ("mfs %0, rbtr;" : "=r"(temp) : );
 gdb_regs[GDB_BTR] = temp;


 for (i = 0; i < sizeof(struct pvr_s)/4; i++)
  gdb_regs[GDB_PVR + i] = pvr.pvr[i];


 __asm__ __volatile__ ("mfs %0, redr;" : "=r"(temp) : );
 gdb_regs[GDB_REDR] = temp;
 __asm__ __volatile__ ("mfs %0, rpid;" : "=r"(temp) : );
 gdb_regs[GDB_RPID] = temp;
 __asm__ __volatile__ ("mfs %0, rzpr;" : "=r"(temp) : );
 gdb_regs[GDB_RZPR] = temp;
 __asm__ __volatile__ ("mfs %0, rtlbx;" : "=r"(temp) : );
 gdb_regs[GDB_RTLBX] = temp;
 __asm__ __volatile__ ("mfs %0, rtlblo;" : "=r"(temp) : );
 gdb_regs[GDB_RTLBLO] = temp;
 __asm__ __volatile__ ("mfs %0, rtlbhi;" : "=r"(temp) : );
 gdb_regs[GDB_RTLBHI] = temp;
}
