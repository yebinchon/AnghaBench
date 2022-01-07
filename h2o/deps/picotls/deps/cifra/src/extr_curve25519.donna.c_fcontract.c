
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int s32 ;
typedef int limb ;


 int F (int,int) ;
 int s32_eq (int,int) ;
 int s32_gte (int,int) ;

__attribute__((used)) static void
fcontract(u8 *output, limb *input_limbs) {
  int i;
  int j;
  s32 input[10];
  s32 mask;


  for (i = 0; i < 10; i++) {
    input[i] = input_limbs[i];
  }

  for (j = 0; j < 2; ++j) {
    for (i = 0; i < 9; ++i) {
      if ((i & 1) == 1) {


        const s32 mask = input[i] >> 31;
        const s32 carry = -((input[i] & mask) >> 25);
        input[i] = input[i] + (carry << 25);
        input[i+1] = input[i+1] - carry;
      } else {
        const s32 mask = input[i] >> 31;
        const s32 carry = -((input[i] & mask) >> 26);
        input[i] = input[i] + (carry << 26);
        input[i+1] = input[i+1] - carry;
      }
    }



    {
      const s32 mask = input[9] >> 31;
      const s32 carry = -((input[9] & mask) >> 25);
      input[9] = input[9] + (carry << 25);
      input[0] = input[0] - (carry * 19);
    }




  }
  {
    const s32 mask = input[0] >> 31;
    const s32 carry = -((input[0] & mask) >> 26);
    input[0] = input[0] + (carry << 26);
    input[1] = input[1] - carry;
  }



  for (j = 0; j < 2; j++) {
    for (i = 0; i < 9; i++) {
      if ((i & 1) == 1) {
        const s32 carry = input[i] >> 25;
        input[i] &= 0x1ffffff;
        input[i+1] += carry;
      } else {
        const s32 carry = input[i] >> 26;
        input[i] &= 0x3ffffff;
        input[i+1] += carry;
      }
    }

    {
      const s32 carry = input[9] >> 25;
      input[9] &= 0x1ffffff;
      input[0] += 19*carry;
    }
  }
  mask = s32_gte(input[0], 0x3ffffed);
  for (i = 1; i < 10; i++) {
    if ((i & 1) == 1) {
      mask &= s32_eq(input[i], 0x1ffffff);
    } else {
      mask &= s32_eq(input[i], 0x3ffffff);
    }
  }



  input[0] -= mask & 0x3ffffed;

  for (i = 1; i < 10; i++) {
    if ((i & 1) == 1) {
      input[i] -= mask & 0x1ffffff;
    } else {
      input[i] -= mask & 0x3ffffff;
    }
  }

  input[1] <<= 2;
  input[2] <<= 3;
  input[3] <<= 5;
  input[4] <<= 6;
  input[6] <<= 1;
  input[7] <<= 3;
  input[8] <<= 4;
  input[9] <<= 6;





  output[0] = 0;
  output[16] = 0;
  output[0 +0] |= input[0] & 0xff; output[0 +1] = (input[0] >> 8) & 0xff; output[0 +2] = (input[0] >> 16) & 0xff; output[0 +3] = (input[0] >> 24) & 0xff;;
  output[3 +0] |= input[1] & 0xff; output[3 +1] = (input[1] >> 8) & 0xff; output[3 +2] = (input[1] >> 16) & 0xff; output[3 +3] = (input[1] >> 24) & 0xff;;
  output[6 +0] |= input[2] & 0xff; output[6 +1] = (input[2] >> 8) & 0xff; output[6 +2] = (input[2] >> 16) & 0xff; output[6 +3] = (input[2] >> 24) & 0xff;;
  output[9 +0] |= input[3] & 0xff; output[9 +1] = (input[3] >> 8) & 0xff; output[9 +2] = (input[3] >> 16) & 0xff; output[9 +3] = (input[3] >> 24) & 0xff;;
  output[12 +0] |= input[4] & 0xff; output[12 +1] = (input[4] >> 8) & 0xff; output[12 +2] = (input[4] >> 16) & 0xff; output[12 +3] = (input[4] >> 24) & 0xff;;
  output[16 +0] |= input[5] & 0xff; output[16 +1] = (input[5] >> 8) & 0xff; output[16 +2] = (input[5] >> 16) & 0xff; output[16 +3] = (input[5] >> 24) & 0xff;;
  output[19 +0] |= input[6] & 0xff; output[19 +1] = (input[6] >> 8) & 0xff; output[19 +2] = (input[6] >> 16) & 0xff; output[19 +3] = (input[6] >> 24) & 0xff;;
  output[22 +0] |= input[7] & 0xff; output[22 +1] = (input[7] >> 8) & 0xff; output[22 +2] = (input[7] >> 16) & 0xff; output[22 +3] = (input[7] >> 24) & 0xff;;
  output[25 +0] |= input[8] & 0xff; output[25 +1] = (input[8] >> 8) & 0xff; output[25 +2] = (input[8] >> 16) & 0xff; output[25 +3] = (input[8] >> 24) & 0xff;;
  output[28 +0] |= input[9] & 0xff; output[28 +1] = (input[9] >> 8) & 0xff; output[28 +2] = (input[9] >> 16) & 0xff; output[28 +3] = (input[9] >> 24) & 0xff;;

}
