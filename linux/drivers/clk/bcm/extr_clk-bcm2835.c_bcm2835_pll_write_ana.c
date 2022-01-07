
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm2835_cprman {int dummy; } ;


 int cprman_write (struct bcm2835_cprman*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
bcm2835_pll_write_ana(struct bcm2835_cprman *cprman, u32 ana_reg_base, u32 *ana)
{
 int i;
 for (i = 3; i >= 0; i--)
  cprman_write(cprman, ana_reg_base + i * 4, ana[i]);
}
