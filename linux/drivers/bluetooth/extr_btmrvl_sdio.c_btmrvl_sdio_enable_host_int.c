
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btmrvl_sdio_card {int func; } ;


 int EINVAL ;
 int HIM_ENABLE ;
 int btmrvl_sdio_enable_host_int_mask (struct btmrvl_sdio_card*,int ) ;
 int btmrvl_sdio_get_rx_unit (struct btmrvl_sdio_card*) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int btmrvl_sdio_enable_host_int(struct btmrvl_sdio_card *card)
{
 int ret;

 if (!card || !card->func)
  return -EINVAL;

 sdio_claim_host(card->func);

 ret = btmrvl_sdio_enable_host_int_mask(card, HIM_ENABLE);

 btmrvl_sdio_get_rx_unit(card);

 sdio_release_host(card->func);

 return ret;
}
