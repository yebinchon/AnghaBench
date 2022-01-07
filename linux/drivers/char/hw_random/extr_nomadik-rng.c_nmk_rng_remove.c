
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_device {int dummy; } ;


 int amba_release_regions (struct amba_device*) ;
 int clk_disable (int ) ;
 int rng_clk ;

__attribute__((used)) static int nmk_rng_remove(struct amba_device *dev)
{
 amba_release_regions(dev);
 clk_disable(rng_clk);
 return 0;
}
