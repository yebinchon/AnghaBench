
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_INT_SD0INSERT ;
 int BCSR_SIGSTAT ;
 int DB1200_SD0_EJECT_INT ;
 int DB1200_SD0_INSERT_INT ;
 int bcsr_read (int ) ;
 int db1200_mmc_cd ;
 int db1200_mmc_cdfn ;
 int enable_irq (int ) ;
 int free_irq (int ,void*) ;
 int request_threaded_irq (int ,int ,int ,int ,char*,void*) ;

__attribute__((used)) static int db1200_mmc_cd_setup(void *mmc_host, int en)
{
 int ret;

 if (en) {
  ret = request_threaded_irq(DB1200_SD0_INSERT_INT, db1200_mmc_cd,
    db1200_mmc_cdfn, 0, "sd_insert", mmc_host);
  if (ret)
   goto out;

  ret = request_threaded_irq(DB1200_SD0_EJECT_INT, db1200_mmc_cd,
    db1200_mmc_cdfn, 0, "sd_eject", mmc_host);
  if (ret) {
   free_irq(DB1200_SD0_INSERT_INT, mmc_host);
   goto out;
  }

  if (bcsr_read(BCSR_SIGSTAT) & BCSR_INT_SD0INSERT)
   enable_irq(DB1200_SD0_EJECT_INT);
  else
   enable_irq(DB1200_SD0_INSERT_INT);

 } else {
  free_irq(DB1200_SD0_INSERT_INT, mmc_host);
  free_irq(DB1200_SD0_EJECT_INT, mmc_host);
 }
 ret = 0;
out:
 return ret;
}
