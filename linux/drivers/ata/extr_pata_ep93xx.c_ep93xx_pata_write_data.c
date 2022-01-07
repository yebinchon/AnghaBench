
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ep93xx_pata_data {int dummy; } ;


 int ep93xx_pata_write (struct ep93xx_pata_data*,int ,unsigned long,int) ;

__attribute__((used)) static void ep93xx_pata_write_data(struct ep93xx_pata_data *drv_data,
       u16 value, unsigned long addr)
{
 ep93xx_pata_write(drv_data, value, addr, 0);
}
