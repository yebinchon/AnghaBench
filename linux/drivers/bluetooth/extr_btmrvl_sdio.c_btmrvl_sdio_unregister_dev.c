
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btmrvl_sdio_card {scalar_t__ func; } ;


 int sdio_claim_host (scalar_t__) ;
 int sdio_disable_func (scalar_t__) ;
 int sdio_release_host (scalar_t__) ;
 int sdio_release_irq (scalar_t__) ;
 int sdio_set_drvdata (scalar_t__,int *) ;

__attribute__((used)) static int btmrvl_sdio_unregister_dev(struct btmrvl_sdio_card *card)
{
 if (card && card->func) {
  sdio_claim_host(card->func);
  sdio_release_irq(card->func);
  sdio_disable_func(card->func);
  sdio_release_host(card->func);
  sdio_set_drvdata(card->func, ((void*)0));
 }

 return 0;
}
