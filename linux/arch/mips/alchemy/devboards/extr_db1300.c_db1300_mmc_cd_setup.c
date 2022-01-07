
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DB1300_SD1_EJECT_INT ;
 int DB1300_SD1_INSERT_INT ;
 scalar_t__ db1300_mmc_card_inserted (void*) ;
 int db1300_mmc_cd ;
 int db1300_mmc_cdfn ;
 int enable_irq (int ) ;
 int free_irq (int ,void*) ;
 int request_threaded_irq (int ,int ,int ,int ,char*,void*) ;

__attribute__((used)) static int db1300_mmc_cd_setup(void *mmc_host, int en)
{
 int ret;

 if (en) {
  ret = request_threaded_irq(DB1300_SD1_INSERT_INT, db1300_mmc_cd,
    db1300_mmc_cdfn, 0, "sd_insert", mmc_host);
  if (ret)
   goto out;

  ret = request_threaded_irq(DB1300_SD1_EJECT_INT, db1300_mmc_cd,
    db1300_mmc_cdfn, 0, "sd_eject", mmc_host);
  if (ret) {
   free_irq(DB1300_SD1_INSERT_INT, mmc_host);
   goto out;
  }

  if (db1300_mmc_card_inserted(mmc_host))
   enable_irq(DB1300_SD1_EJECT_INT);
  else
   enable_irq(DB1300_SD1_INSERT_INT);

 } else {
  free_irq(DB1300_SD1_INSERT_INT, mmc_host);
  free_irq(DB1300_SD1_EJECT_INT, mmc_host);
 }
 ret = 0;
out:
 return ret;
}
