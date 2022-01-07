
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIPER_ICR_CF_RST ;
 int viper_icr_clear_bit (int ) ;
 int viper_icr_set_bit (int ) ;

__attribute__((used)) static void viper_cf_reset(int state)
{
 if (state)
  viper_icr_set_bit(VIPER_ICR_CF_RST);
 else
  viper_icr_clear_bit(VIPER_ICR_CF_RST);
}
