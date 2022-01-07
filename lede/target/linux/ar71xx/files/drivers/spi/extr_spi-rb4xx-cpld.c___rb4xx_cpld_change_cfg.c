
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb4xx_cpld {unsigned int config; } ;


 unsigned int CPLD_CFG_nLED5 ;
 int CPLD_CMD_LED5_OFF ;
 int CPLD_CMD_LED5_ON ;
 int rb4xx_cpld_write_cfg (struct rb4xx_cpld*,unsigned int) ;
 int rb4xx_cpld_write_cmd (struct rb4xx_cpld*,int ) ;

__attribute__((used)) static int __rb4xx_cpld_change_cfg(struct rb4xx_cpld *cpld, unsigned mask,
       unsigned value)
{
 unsigned int config;
 int err;

 config = cpld->config & ~mask;
 config |= value;

 if ((cpld->config ^ config) & 0xff) {
  err = rb4xx_cpld_write_cfg(cpld, config);
  if (err)
   return err;
 }

 if ((cpld->config ^ config) & CPLD_CFG_nLED5) {
  err = rb4xx_cpld_write_cmd(cpld, (value) ? CPLD_CMD_LED5_ON :
          CPLD_CMD_LED5_OFF);
  if (err)
   return err;
 }

 cpld->config = config;
 return 0;
}
