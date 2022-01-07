
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int limb ;


 int div_by_2_25 (int) ;
 int div_by_2_26 (int) ;

__attribute__((used)) static void freduce_coefficients(limb *output) {
  unsigned i;

  output[10] = 0;

  for (i = 0; i < 10; i += 2) {
    limb over = div_by_2_26(output[i]);




    output[i] -= over << 26;
    output[i+1] += over;







    over = div_by_2_25(output[i+1]);
    output[i+1] -= over << 25;
    output[i+2] += over;
  }

  output[0] += output[10] << 4;
  output[0] += output[10] << 1;
  output[0] += output[10];

  output[10] = 0;



  {
    limb over = div_by_2_26(output[0]);
    output[0] -= over << 26;
    output[1] += over;
  }



}
