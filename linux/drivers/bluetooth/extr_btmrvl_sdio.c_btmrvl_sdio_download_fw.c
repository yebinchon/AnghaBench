
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct btmrvl_sdio_card {int func; scalar_t__ helper; TYPE_1__* reg; } ;
struct TYPE_2__ {int card_fw_status0; } ;


 int BT_DBG (char*,...) ;
 int BT_ERR (char*) ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 int MAX_POLL_TRIES ;
 scalar_t__ btmrvl_sdio_download_fw_w_helper (struct btmrvl_sdio_card*) ;
 int btmrvl_sdio_download_helper (struct btmrvl_sdio_card*) ;
 scalar_t__ btmrvl_sdio_verify_fw_download (struct btmrvl_sdio_card*,int) ;
 int sdio_claim_host (int ) ;
 scalar_t__ sdio_readb (int ,int ,int*) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int btmrvl_sdio_download_fw(struct btmrvl_sdio_card *card)
{
 int ret;
 u8 fws0;
 int pollnum = MAX_POLL_TRIES;

 if (!card || !card->func) {
  BT_ERR("card or function is NULL!");
  return -EINVAL;
 }

 if (!btmrvl_sdio_verify_fw_download(card, 1)) {
  BT_DBG("Firmware already downloaded!");
  return 0;
 }

 sdio_claim_host(card->func);


 fws0 = sdio_readb(card->func, card->reg->card_fw_status0, &ret);
 if (ret) {
  BT_ERR("Failed to read FW downloading status!");
  ret = -EIO;
  goto done;
 }
 if (fws0) {
  BT_DBG("BT not the winner (%#x). Skip FW downloading", fws0);


  pollnum *= 10;
 } else {
  if (card->helper) {
   ret = btmrvl_sdio_download_helper(card);
   if (ret) {
    BT_ERR("Failed to download helper!");
    ret = -EIO;
    goto done;
   }
  }

  if (btmrvl_sdio_download_fw_w_helper(card)) {
   BT_ERR("Failed to download firmware!");
   ret = -EIO;
   goto done;
  }
 }





 if (btmrvl_sdio_verify_fw_download(card, pollnum)) {
  BT_ERR("FW failed to be active in time!");
  ret = -ETIMEDOUT;
  goto done;
 }

 sdio_release_host(card->func);

 return 0;

done:
 sdio_release_host(card->func);
 return ret;
}
