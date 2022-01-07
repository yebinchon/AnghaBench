
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int MSR_IA32_QM_CTR ;
 int MSR_IA32_QM_EVTSEL ;
 int rdmsrl (int ,int ) ;
 int wrmsr (int ,int ,int ) ;

__attribute__((used)) static u64 __rmid_read(u32 rmid, u32 eventid)
{
 u64 val;
 wrmsr(MSR_IA32_QM_EVTSEL, eventid, rmid);
 rdmsrl(MSR_IA32_QM_CTR, val);

 return val;
}
