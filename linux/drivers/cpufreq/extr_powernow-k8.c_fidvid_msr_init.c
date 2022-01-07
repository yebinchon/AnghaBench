
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MSR_C_HI_STP_GNT_BENIGN ;
 int MSR_C_LO_VID_SHIFT ;
 int MSR_FIDVID_CTL ;
 int MSR_FIDVID_STATUS ;
 int MSR_S_HI_CURRENT_VID ;
 int MSR_S_LO_CURRENT_FID ;
 int pr_debug (char*,int ,int,int) ;
 int rdmsr (int ,int,int) ;
 int smp_processor_id () ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void fidvid_msr_init(void)
{
 u32 lo, hi;
 u8 fid, vid;

 rdmsr(MSR_FIDVID_STATUS, lo, hi);
 vid = hi & MSR_S_HI_CURRENT_VID;
 fid = lo & MSR_S_LO_CURRENT_FID;
 lo = fid | (vid << MSR_C_LO_VID_SHIFT);
 hi = MSR_C_HI_STP_GNT_BENIGN;
 pr_debug("cpu%d, init lo 0x%x, hi 0x%x\n", smp_processor_id(), lo, hi);
 wrmsr(MSR_FIDVID_CTL, lo, hi);
}
