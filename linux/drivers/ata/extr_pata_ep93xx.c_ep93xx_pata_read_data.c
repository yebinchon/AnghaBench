
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ep93xx_pata_data {int dummy; } ;


 int ep93xx_pata_read (struct ep93xx_pata_data*,unsigned long,int) ;

__attribute__((used)) static u16 ep93xx_pata_read_data(struct ep93xx_pata_data *drv_data,
     unsigned long addr)
{
 return ep93xx_pata_read(drv_data, addr, 0);
}
