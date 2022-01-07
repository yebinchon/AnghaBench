
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; int clock_speed; } ;
struct TYPE_7__ {TYPE_1__ params; } ;
typedef TYPE_2__ MGSLPC_INFO ;


 unsigned char BIT2 ;
 scalar_t__ CCR0 ;
 scalar_t__ CCR1 ;
 scalar_t__ CCR2 ;
 scalar_t__ CCR4 ;
 scalar_t__ CHB ;
 scalar_t__ MGSL_MODE_HDLC ;
 scalar_t__ MODE ;
 int mgslpc_set_rate (TYPE_2__*,scalar_t__,int) ;
 int write_reg (TYPE_2__*,scalar_t__,int) ;

__attribute__((used)) static void enable_auxclk(MGSLPC_INFO *info)
{
 unsigned char val;
 val = 0x82;


 if (info->params.mode == MGSL_MODE_HDLC && info->params.clock_speed)
  val |= BIT2;
 write_reg(info, CHB + MODE, val);
 write_reg(info, CHB + CCR0, 0xc0);
 write_reg(info, CHB + CCR1, 0x17);
 if (info->params.mode == MGSL_MODE_HDLC && info->params.clock_speed)
  write_reg(info, CHB + CCR2, 0x38);
 else
  write_reg(info, CHB + CCR2, 0x30);
 write_reg(info, CHB + CCR4, 0x50);




 if (info->params.mode == MGSL_MODE_HDLC && info->params.clock_speed)
  mgslpc_set_rate(info, CHB, info->params.clock_speed);
 else
  mgslpc_set_rate(info, CHB, 921600);
}
