
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOF_OUT_INIT_HIGH ;
 int H1940_SUSPEND_CHECK ;
 int H1940_SUSPEND_CHECKSUM ;
 int S3C2410_GPF (int) ;
 int S3C2410_GPG (int) ;
 int S3C2410_GPIO_INPUT ;
 void* S3C2410_GSTATUS3 ;
 void* S3C2410_GSTATUS4 ;
 int S3C_PMDBG (char*,scalar_t__) ;
 unsigned long __pa_symbol (int ) ;
 scalar_t__ __raw_readl (void*) ;
 int __raw_writel (unsigned long,void*) ;
 int gpio_free (int ) ;
 int gpio_request_one (int ,int ,int *) ;
 scalar_t__ machine_is_aml_m5900 () ;
 scalar_t__ machine_is_h1940 () ;
 scalar_t__ machine_is_rx1950 () ;
 scalar_t__ machine_is_rx3715 () ;
 void* phys_to_virt (int ) ;
 int s3c_cpu_resume ;
 int s3c_gpio_cfgpin (int ,int ) ;

__attribute__((used)) static void s3c2410_pm_prepare(void)
{


 __raw_writel(__pa_symbol(s3c_cpu_resume), S3C2410_GSTATUS3);

 S3C_PMDBG("GSTATUS3 0x%08x\n", __raw_readl(S3C2410_GSTATUS3));
 S3C_PMDBG("GSTATUS4 0x%08x\n", __raw_readl(S3C2410_GSTATUS4));

 if (machine_is_h1940()) {
  void *base = phys_to_virt(H1940_SUSPEND_CHECK);
  unsigned long ptr;
  unsigned long calc = 0;



  for (ptr = 0; ptr < 0x40000; ptr += 0x400)
   calc += __raw_readl(base+ptr);

  __raw_writel(calc, phys_to_virt(H1940_SUSPEND_CHECKSUM));
 }




 if (machine_is_rx3715() || machine_is_rx1950()) {
  void *base = phys_to_virt(H1940_SUSPEND_CHECK);
  unsigned long ptr;
  unsigned long calc = 0;



  for (ptr = 0; ptr < 0x40000; ptr += 0x4)
   calc += __raw_readl(base+ptr);

  __raw_writel(calc, phys_to_virt(H1940_SUSPEND_CHECKSUM));
 }

 if (machine_is_aml_m5900()) {
  gpio_request_one(S3C2410_GPF(2), GPIOF_OUT_INIT_HIGH, ((void*)0));
  gpio_free(S3C2410_GPF(2));
 }

 if (machine_is_rx1950()) {






  s3c_gpio_cfgpin(S3C2410_GPG(13), S3C2410_GPIO_INPUT);
  s3c_gpio_cfgpin(S3C2410_GPG(14), S3C2410_GPIO_INPUT);
  s3c_gpio_cfgpin(S3C2410_GPG(15), S3C2410_GPIO_INPUT);
 }
}
