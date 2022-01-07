
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_fs {unsigned long ndiv; } ;


 int EINVAL ;

__attribute__((used)) static int clk_fs660c32_vco_get_params(unsigned long input,
    unsigned long output, struct stm_fs *fs)
{




 unsigned long pdiv = 1, n;


 if (output < 384000000 || output > 660000000)
  return -EINVAL;

 if (input > 40000000)


  return -EINVAL;

 input /= 1000;
 output /= 1000;

 n = output * pdiv / input;
 if (n < 16)
  n = 16;
 fs->ndiv = n - 16;

 return 0;
}
