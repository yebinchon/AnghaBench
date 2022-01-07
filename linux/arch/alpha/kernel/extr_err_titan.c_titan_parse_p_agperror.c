
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EXTRACT (int,int ) ;
 int MCHK_DISPOSITION_REPORT ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int TITAN__PCHIP_AGPERROR__ADDR ;
 int TITAN__PCHIP_AGPERROR__CMD ;
 int TITAN__PCHIP_AGPERROR__DAC ;
 int TITAN__PCHIP_AGPERROR__ERRMASK ;
 int TITAN__PCHIP_AGPERROR__FENCE ;
 int TITAN__PCHIP_AGPERROR__HPQFULL ;
 int TITAN__PCHIP_AGPERROR__IPTE ;
 int TITAN__PCHIP_AGPERROR__LEN ;
 int TITAN__PCHIP_AGPERROR__LOST ;
 int TITAN__PCHIP_AGPERROR__LPQFULL ;
 int TITAN__PCHIP_AGPERROR__MWIN ;
 int TITAN__PCHIP_AGPERROR__NOWINDOW ;
 int TITAN__PCHIP_AGPERROR__PTP ;
 int TITAN__PCHIP_AGPERROR__RESCMD ;
 int err_print_prefix ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int
titan_parse_p_agperror(int which, u64 agperror, int print)
{
 int status = MCHK_DISPOSITION_REPORT;
 if (!(agperror & ((1UL << 0) | (1UL << 1) | (1UL << 2) | (1UL << 3) | (1UL << 4) | (1UL << 5) | (1UL << 6))))
  return MCHK_DISPOSITION_UNKNOWN_ERROR;
 return status;
}
