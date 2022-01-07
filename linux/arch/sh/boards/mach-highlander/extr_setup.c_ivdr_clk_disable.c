
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int IVDR_CK_ON ;
 int PA_IVDRCTL ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void ivdr_clk_disable(struct clk *clk)
{
 __raw_writew(__raw_readw(PA_IVDRCTL) & ~(1 << IVDR_CK_ON), PA_IVDRCTL);
}
