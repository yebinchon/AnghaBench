
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int dummy; } ;


 int mtk_ppe_debugfs_init (struct mtk_eth*) ;
 int mtk_ppe_start (struct mtk_eth*) ;

int mtk_ppe_probe(struct mtk_eth *eth)
{
 int err;

 err = mtk_ppe_start(eth);
 if (err)
  return err;

 err = mtk_ppe_debugfs_init(eth);
 if (err)
  return err;

 return 0;
}
