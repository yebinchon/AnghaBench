
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sms_sysconfig; } ;


 int SMS_SYSCONFIG ;
 TYPE_1__ sms_context ;
 int sms_read_reg (int ) ;

void omap2_sms_save_context(void)
{
 sms_context.sms_sysconfig = sms_read_reg(SMS_SYSCONFIG);
}
