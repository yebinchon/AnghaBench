
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;


 int dev_coredumpm (struct device*,int *,struct scatterlist*,size_t,int ,int ,int ) ;
 int devcd_free_sgtable ;
 int devcd_read_from_sgtable ;

void dev_coredumpsg(struct device *dev, struct scatterlist *table,
      size_t datalen, gfp_t gfp)
{
 dev_coredumpm(dev, ((void*)0), table, datalen, gfp, devcd_read_from_sgtable,
        devcd_free_sgtable);
}
