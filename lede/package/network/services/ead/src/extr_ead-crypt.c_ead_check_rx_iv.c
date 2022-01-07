
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ EAD_MAX_IV_INCR ;
 scalar_t__ ead_rx_iv ;

__attribute__((used)) static bool
ead_check_rx_iv(uint32_t iv)
{
 if (iv <= ead_rx_iv)
  return 0;

 if (iv > ead_rx_iv + EAD_MAX_IV_INCR)
  return 0;

 ead_rx_iv = iv;
 return 1;
}
