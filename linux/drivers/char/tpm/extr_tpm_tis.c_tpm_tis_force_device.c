
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int flags; int end; } ;
struct platform_device {int dummy; } ;


 int ARRAY_SIZE (struct resource const*) ;

 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;

 int force ;
 struct platform_device* force_pdev ;
 struct platform_device* platform_device_register_simple (char*,int,struct resource const*,int ) ;

__attribute__((used)) static int tpm_tis_force_device(void)
{
 struct platform_device *pdev;
 static const struct resource x86_resources[] = {
  {
   .start = 0xFED40000,
   .end = 0xFED40000 + 128 - 1,
   .flags = 129,
  },
 };

 if (!force)
  return 0;





 pdev = platform_device_register_simple("tpm_tis", -1, x86_resources,
            ARRAY_SIZE(x86_resources));
 if (IS_ERR(pdev))
  return PTR_ERR(pdev);
 force_pdev = pdev;

 return 0;
}
