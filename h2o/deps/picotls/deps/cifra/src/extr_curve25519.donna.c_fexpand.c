
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int limb ;


 int F (int,int,int,int) ;

__attribute__((used)) static void
fexpand(limb *output, const u8 *input) {





  output[0] = ((((limb) input[0 + 0]) | ((limb) input[0 + 1]) << 8 | ((limb) input[0 + 2]) << 16 | ((limb) input[0 + 3]) << 24) >> 0) & 0x3ffffff;;
  output[1] = ((((limb) input[3 + 0]) | ((limb) input[3 + 1]) << 8 | ((limb) input[3 + 2]) << 16 | ((limb) input[3 + 3]) << 24) >> 2) & 0x1ffffff;;
  output[2] = ((((limb) input[6 + 0]) | ((limb) input[6 + 1]) << 8 | ((limb) input[6 + 2]) << 16 | ((limb) input[6 + 3]) << 24) >> 3) & 0x3ffffff;;
  output[3] = ((((limb) input[9 + 0]) | ((limb) input[9 + 1]) << 8 | ((limb) input[9 + 2]) << 16 | ((limb) input[9 + 3]) << 24) >> 5) & 0x1ffffff;;
  output[4] = ((((limb) input[12 + 0]) | ((limb) input[12 + 1]) << 8 | ((limb) input[12 + 2]) << 16 | ((limb) input[12 + 3]) << 24) >> 6) & 0x3ffffff;;
  output[5] = ((((limb) input[16 + 0]) | ((limb) input[16 + 1]) << 8 | ((limb) input[16 + 2]) << 16 | ((limb) input[16 + 3]) << 24) >> 0) & 0x1ffffff;;
  output[6] = ((((limb) input[19 + 0]) | ((limb) input[19 + 1]) << 8 | ((limb) input[19 + 2]) << 16 | ((limb) input[19 + 3]) << 24) >> 1) & 0x3ffffff;;
  output[7] = ((((limb) input[22 + 0]) | ((limb) input[22 + 1]) << 8 | ((limb) input[22 + 2]) << 16 | ((limb) input[22 + 3]) << 24) >> 3) & 0x1ffffff;;
  output[8] = ((((limb) input[25 + 0]) | ((limb) input[25 + 1]) << 8 | ((limb) input[25 + 2]) << 16 | ((limb) input[25 + 3]) << 24) >> 4) & 0x3ffffff;;
  output[9] = ((((limb) input[28 + 0]) | ((limb) input[28 + 1]) << 8 | ((limb) input[28 + 2]) << 16 | ((limb) input[28 + 3]) << 24) >> 6) & 0x1ffffff;;

}
