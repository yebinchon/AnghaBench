
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_mt7622_drv ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int clk_mt7622_init(void)
{
 return platform_driver_register(&clk_mt7622_drv);
}
