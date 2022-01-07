
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_device {int pclk; int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (int *,char*) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static int amba_get_enable_pclk(struct amba_device *pcdev)
{
 int ret;

 pcdev->pclk = clk_get(&pcdev->dev, "apb_pclk");
 if (IS_ERR(pcdev->pclk))
  return PTR_ERR(pcdev->pclk);

 ret = clk_prepare_enable(pcdev->pclk);
 if (ret)
  clk_put(pcdev->pclk);

 return ret;
}
