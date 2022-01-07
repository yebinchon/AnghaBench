
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_INT_SD1INSERT ;
 int BCSR_SIGSTAT ;
 int PB1200_SD1_EJECT_INT ;
 int PB1200_SD1_INSERT_INT ;
 int bcsr_read (int ) ;
 int enable_irq (int ) ;
 int free_irq (int ,void*) ;
 int pb1200_mmc1_cd ;
 int pb1200_mmc1_cdfn ;
 int request_threaded_irq (int ,int ,int ,int ,char*,void*) ;

__attribute__((used)) static int pb1200_mmc1_cd_setup(void *mmc_host, int en)
{
 int ret;

 if (en) {
  ret = request_threaded_irq(PB1200_SD1_INSERT_INT, pb1200_mmc1_cd,
    pb1200_mmc1_cdfn, 0, "sd1_insert", mmc_host);
  if (ret)
   goto out;

  ret = request_threaded_irq(PB1200_SD1_EJECT_INT, pb1200_mmc1_cd,
    pb1200_mmc1_cdfn, 0, "sd1_eject", mmc_host);
  if (ret) {
   free_irq(PB1200_SD1_INSERT_INT, mmc_host);
   goto out;
  }

  if (bcsr_read(BCSR_SIGSTAT) & BCSR_INT_SD1INSERT)
   enable_irq(PB1200_SD1_EJECT_INT);
  else
   enable_irq(PB1200_SD1_INSERT_INT);

 } else {
  free_irq(PB1200_SD1_INSERT_INT, mmc_host);
  free_irq(PB1200_SD1_EJECT_INT, mmc_host);
 }
 ret = 0;
out:
 return ret;
}
