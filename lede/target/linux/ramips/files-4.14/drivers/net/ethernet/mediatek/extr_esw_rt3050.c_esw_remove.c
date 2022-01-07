
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int dummy; } ;
struct platform_device {int dummy; } ;


 int RT305X_ESW_REG_IMR ;
 int esw_w32 (struct rt305x_esw*,int ,int ) ;
 struct rt305x_esw* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int esw_remove(struct platform_device *pdev)
{
 struct rt305x_esw *esw = platform_get_drvdata(pdev);

 if (esw) {
  esw_w32(esw, ~0, RT305X_ESW_REG_IMR);
  platform_set_drvdata(pdev, ((void*)0));
 }

 return 0;
}
