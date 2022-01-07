
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* _vowels_eng ;
 size_t conv_eng (scalar_t__) ;
 int* vowels_eng ;

void gen_vowels_eng (void) {
  int i;
  for (i = 0; _vowels_eng[i]; i++) {
    vowels_eng[conv_eng(_vowels_eng[i])] = 1;
  }
}
