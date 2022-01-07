
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_device {int pclk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static void amba_put_disable_pclk(struct amba_device *pcdev)
{
 clk_disable_unprepare(pcdev->pclk);
 clk_put(pcdev->pclk);
}
