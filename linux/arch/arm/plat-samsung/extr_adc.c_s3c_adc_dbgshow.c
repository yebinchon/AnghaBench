
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adc_device {scalar_t__ regs; } ;


 scalar_t__ S3C2410_ADCCON ;
 scalar_t__ S3C2410_ADCDLY ;
 scalar_t__ S3C2410_ADCTSC ;
 int adc_dbg (struct adc_device*,char*,int ,int ,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void s3c_adc_dbgshow(struct adc_device *adc)
{
 adc_dbg(adc, "CON=%08x, TSC=%08x, DLY=%08x\n",
  readl(adc->regs + S3C2410_ADCCON),
  readl(adc->regs + S3C2410_ADCTSC),
  readl(adc->regs + S3C2410_ADCDLY));
}
