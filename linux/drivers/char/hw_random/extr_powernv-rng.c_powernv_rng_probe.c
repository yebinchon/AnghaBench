
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int EEXIST ;
 int ENODEV ;
 int devm_hwrng_register (int *,int *) ;
 int powernv_hwrng ;
 int pr_info (char*) ;

__attribute__((used)) static int powernv_rng_probe(struct platform_device *pdev)
{
 int rc;

 rc = devm_hwrng_register(&pdev->dev, &powernv_hwrng);
 if (rc) {

  if (rc == -EEXIST)
   rc = -ENODEV;

  return rc;
 }

 pr_info("Registered powernv hwrng.\n");

 return 0;
}
