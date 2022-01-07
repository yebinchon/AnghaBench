
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dismarkwblongto; int diswbfst; int wbthresh; int cvmsegenak; scalar_t__ cvmsegenau; scalar_t__ cvmsegenas; scalar_t__ istrnol2; scalar_t__ wbfltime; scalar_t__ mclkalwys; scalar_t__ csrckalwys; scalar_t__ didtto; scalar_t__ nomerge; scalar_t__ allsyncw; scalar_t__ xkioenau; scalar_t__ xkioenas; scalar_t__ xkmemenau; scalar_t__ xkmemenas; scalar_t__ dissyncws; scalar_t__ syncwsmarked; scalar_t__ iobdmascrmsb; scalar_t__ dismrgclrwbto; } ;
union octeon_cvmemctl {int u64; TYPE_1__ s; } ;
struct TYPE_6__ {int nw_tim; } ;
union cvmx_pow_nw_tim {scalar_t__ u64; TYPE_3__ s; } ;
struct TYPE_5__ {int tout_val; scalar_t__ tout_enb; } ;
union cvmx_iob_fau_timeout {scalar_t__ u64; TYPE_2__ s; } ;


 int CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE ;
 int CVMX_IOB_FAU_TIMEOUT ;
 int CVMX_POW_NW_TIM ;
 int OCTEON_CN38XX_PASS2 ;
 int OCTEON_CN63XX_PASS1_X ;
 int OCTEON_CN68XX ;
 int OCTEON_CN70XX ;
 int OCTEON_CN7XXX ;
 int OCTEON_FEATURE_FAU ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;
 scalar_t__ octeon_has_feature (int ) ;
 int pr_notice (char*,int,int) ;
 int read_c0_cvmmemctl () ;
 scalar_t__ smp_processor_id () ;
 int write_c0_cvmmemctl (int ) ;
 int write_c0_derraddr1 (int ) ;
 int write_octeon_c0_icacheerr (int ) ;

void octeon_user_io_init(void)
{
 union octeon_cvmemctl cvmmemctl;


 cvmmemctl.u64 = read_c0_cvmmemctl();



 cvmmemctl.s.dismarkwblongto = 1;


 cvmmemctl.s.dismrgclrwbto = 0;



 cvmmemctl.s.iobdmascrmsb = 0;




 cvmmemctl.s.syncwsmarked = 0;

 cvmmemctl.s.dissyncws = 0;

 if (OCTEON_IS_MODEL(OCTEON_CN38XX_PASS2))
  cvmmemctl.s.diswbfst = 1;
 else
  cvmmemctl.s.diswbfst = 0;


 cvmmemctl.s.xkmemenas = 0;



 cvmmemctl.s.xkmemenau = 0;



 cvmmemctl.s.xkioenas = 0;



 cvmmemctl.s.xkioenau = 0;



 cvmmemctl.s.allsyncw = 0;



 cvmmemctl.s.nomerge = 0;




 cvmmemctl.s.didtto = 0;

 cvmmemctl.s.csrckalwys = 0;

 cvmmemctl.s.mclkalwys = 0;






 cvmmemctl.s.wbfltime = 0;

 cvmmemctl.s.istrnol2 = 0;







 if (OCTEON_IS_MODEL(OCTEON_CN63XX_PASS1_X))
  cvmmemctl.s.wbthresh = 4;
 else
  cvmmemctl.s.wbthresh = 10;






 cvmmemctl.s.cvmsegenak = 0;



 cvmmemctl.s.cvmsegenas = 0;


 cvmmemctl.s.cvmsegenau = 0;

 write_c0_cvmmemctl(cvmmemctl.u64);


 if (smp_processor_id() == 0)
  pr_notice("CVMSEG size: %d cache lines (%d bytes)\n",
     CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE,
     CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE * 128);

 if (octeon_has_feature(OCTEON_FEATURE_FAU)) {
  union cvmx_iob_fau_timeout fau_timeout;


  fau_timeout.u64 = 0;
  fau_timeout.s.tout_val = 0xfff;

  fau_timeout.s.tout_enb = 0;
  cvmx_write_csr(CVMX_IOB_FAU_TIMEOUT, fau_timeout.u64);
 }

 if ((!OCTEON_IS_MODEL(OCTEON_CN68XX) &&
      !OCTEON_IS_MODEL(OCTEON_CN7XXX)) ||
     OCTEON_IS_MODEL(OCTEON_CN70XX)) {
  union cvmx_pow_nw_tim nm_tim;

  nm_tim.u64 = 0;

  nm_tim.s.nw_tim = 3;
  cvmx_write_csr(CVMX_POW_NW_TIM, nm_tim.u64);
 }

 write_octeon_c0_icacheerr(0);
 write_c0_derraddr1(0);
}
