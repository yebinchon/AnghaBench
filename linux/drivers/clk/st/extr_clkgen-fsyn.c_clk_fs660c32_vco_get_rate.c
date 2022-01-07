
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_fs {int ndiv; } ;



__attribute__((used)) static int clk_fs660c32_vco_get_rate(unsigned long input, struct stm_fs *fs,
      unsigned long *rate)
{
 unsigned long nd = fs->ndiv + 16;

 *rate = input * nd;

 return 0;
}
