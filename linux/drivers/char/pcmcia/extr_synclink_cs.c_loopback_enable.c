
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int clock_speed; } ;
struct TYPE_8__ {TYPE_1__ params; } ;
typedef TYPE_2__ MGSLPC_INFO ;


 unsigned char BIT0 ;
 unsigned char BIT1 ;
 unsigned char BIT2 ;
 unsigned char BIT4 ;
 unsigned char BIT5 ;
 scalar_t__ CCR1 ;
 scalar_t__ CCR2 ;
 scalar_t__ CHA ;
 scalar_t__ MODE ;
 int mgslpc_set_rate (TYPE_2__*,scalar_t__,int) ;
 unsigned char read_reg (TYPE_2__*,scalar_t__) ;
 int write_reg (TYPE_2__*,scalar_t__,unsigned char) ;

__attribute__((used)) static void loopback_enable(MGSLPC_INFO *info)
{
 unsigned char val;


 val = read_reg(info, CHA + CCR1) | (BIT2 | BIT1 | BIT0);
 write_reg(info, CHA + CCR1, val);


 val = read_reg(info, CHA + CCR2) | (BIT4 | BIT5);
 write_reg(info, CHA + CCR2, val);


 if (info->params.clock_speed)
  mgslpc_set_rate(info, CHA, info->params.clock_speed);
 else
  mgslpc_set_rate(info, CHA, 1843200);


 val = read_reg(info, CHA + MODE) | BIT0;
 write_reg(info, CHA + MODE, val);
}
