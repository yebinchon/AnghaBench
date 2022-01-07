
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int CFID; } ;
union msr_fidvidstatus {TYPE_1__ bits; int val; } ;


 int MSR_K7_FID_VID_STATUS ;
 int* fid_codes ;
 int fsb ;
 int rdmsrl (int ,int ) ;

__attribute__((used)) static unsigned int powernow_get(unsigned int cpu)
{
 union msr_fidvidstatus fidvidstatus;
 unsigned int cfid;

 if (cpu)
  return 0;
 rdmsrl(MSR_K7_FID_VID_STATUS, fidvidstatus.val);
 cfid = fidvidstatus.bits.CFID;

 return fsb * fid_codes[cfid] / 10;
}
