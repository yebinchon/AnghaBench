
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int INTEL_MSIC_BLOCK_AUDIO ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 void* msic_generic_platform_data (void*,int ) ;
 struct platform_device* platform_device_register_simple (char*,int,int *,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static void *msic_audio_platform_data(void *info)
{
 struct platform_device *pdev;

 pdev = platform_device_register_simple("sst-platform", -1, ((void*)0), 0);

 if (IS_ERR(pdev)) {
  pr_err("failed to create audio platform device\n");
  return ((void*)0);
 }

 return msic_generic_platform_data(info, INTEL_MSIC_BLOCK_AUDIO);
}
