
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btmrvl_sdio_card {int func; } ;


 int EINVAL ;
 int HIM_DISABLE ;
 int btmrvl_sdio_disable_host_int_mask (struct btmrvl_sdio_card*,int ) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int btmrvl_sdio_disable_host_int(struct btmrvl_sdio_card *card)
{
 int ret;

 if (!card || !card->func)
  return -EINVAL;

 sdio_claim_host(card->func);

 ret = btmrvl_sdio_disable_host_int_mask(card, HIM_DISABLE);

 sdio_release_host(card->func);

 return ret;
}
