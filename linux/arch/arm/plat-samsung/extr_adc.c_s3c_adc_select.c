
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_adc_client {int channel; int is_ts; int (* select_cb ) (struct s3c_adc_client*,int) ;} ;
struct adc_device {scalar_t__ regs; int pdev; } ;
typedef enum s3c_cpu_type { ____Placeholder_s3c_cpu_type } s3c_cpu_type ;
struct TYPE_2__ {int driver_data; } ;


 scalar_t__ S3C2410_ADCCON ;
 unsigned int S3C2410_ADCCON_MUXMASK ;
 unsigned int S3C2410_ADCCON_SELMUX (int) ;
 unsigned int S3C2410_ADCCON_STARTMASK ;
 unsigned int S3C2410_ADCCON_STDBM ;
 scalar_t__ S3C2443_ADCMUX ;
 scalar_t__ S5P_ADCMUX ;
 int TYPE_ADCV1 ;
 int TYPE_ADCV11 ;
 int TYPE_ADCV12 ;
 int TYPE_ADCV2 ;
 int TYPE_ADCV3 ;
 TYPE_1__* platform_get_device_id (int ) ;
 unsigned int readl (scalar_t__) ;
 int stub1 (struct s3c_adc_client*,int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void s3c_adc_select(struct adc_device *adc,
      struct s3c_adc_client *client)
{
 unsigned con = readl(adc->regs + S3C2410_ADCCON);
 enum s3c_cpu_type cpu = platform_get_device_id(adc->pdev)->driver_data;

 client->select_cb(client, 1);

 if (cpu == TYPE_ADCV1 || cpu == TYPE_ADCV2)
  con &= ~S3C2410_ADCCON_MUXMASK;
 con &= ~S3C2410_ADCCON_STDBM;
 con &= ~S3C2410_ADCCON_STARTMASK;

 if (!client->is_ts) {
  if (cpu == TYPE_ADCV3)
   writel(client->channel & 0xf, adc->regs + S5P_ADCMUX);
  else if (cpu == TYPE_ADCV11 || cpu == TYPE_ADCV12)
   writel(client->channel & 0xf,
      adc->regs + S3C2443_ADCMUX);
  else
   con |= S3C2410_ADCCON_SELMUX(client->channel);
 }

 writel(con, adc->regs + S3C2410_ADCCON);
}
