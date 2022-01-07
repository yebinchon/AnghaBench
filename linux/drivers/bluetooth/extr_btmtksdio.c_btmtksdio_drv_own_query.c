
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btmtksdio_dev {int func; } ;


 int MTK_REG_CHLPCR ;
 int sdio_readl (int ,int ,int *) ;

__attribute__((used)) static u32 btmtksdio_drv_own_query(struct btmtksdio_dev *bdev)
{
 return sdio_readl(bdev->func, MTK_REG_CHLPCR, ((void*)0));
}
