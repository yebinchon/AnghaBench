
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VIPER_ICR ;
 unsigned int icr ;

__attribute__((used)) static void viper_icr_clear_bit(unsigned int bit)
{
 icr &= ~bit;
 VIPER_ICR = icr;
}
