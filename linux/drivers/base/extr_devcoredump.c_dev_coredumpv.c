
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;


 int dev_coredumpm (struct device*,int *,void*,size_t,int ,int ,int ) ;
 int devcd_freev ;
 int devcd_readv ;

void dev_coredumpv(struct device *dev, void *data, size_t datalen,
     gfp_t gfp)
{
 dev_coredumpm(dev, ((void*)0), data, datalen, gfp, devcd_readv, devcd_freev);
}
