
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct btmrvl_sdio_card {int func; } ;


 int ETIMEDOUT ;
 scalar_t__ FIRMWARE_READY ;
 int btmrvl_sdio_read_fw_status (struct btmrvl_sdio_card*,scalar_t__*) ;
 int msleep (int) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int btmrvl_sdio_verify_fw_download(struct btmrvl_sdio_card *card,
        int pollnum)
{
 u16 firmwarestat;
 int tries, ret;


 for (tries = 0; tries < pollnum; tries++) {
  sdio_claim_host(card->func);
  ret = btmrvl_sdio_read_fw_status(card, &firmwarestat);
  sdio_release_host(card->func);
  if (ret < 0)
   continue;

  if (firmwarestat == FIRMWARE_READY)
   return 0;

  msleep(100);
 }

 return -ETIMEDOUT;
}
