
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int dummy; } ;


 int mtk_ppe_stop (struct mtk_eth*) ;

void mtk_ppe_remove(struct mtk_eth *eth)
{
 mtk_ppe_stop(eth);
}
