
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sms_sysconfig; } ;


 int SMS_SYSCONFIG ;
 TYPE_1__ sms_context ;
 int sms_write_reg (int ,int ) ;

void omap2_sms_restore_context(void)
{
 sms_write_reg(sms_context.sms_sysconfig, SMS_SYSCONFIG);
}
