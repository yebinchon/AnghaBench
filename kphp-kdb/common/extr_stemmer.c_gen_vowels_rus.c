
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* _vowels_rus ;
 size_t conv_rus_win1251 (scalar_t__) ;
 int* vowels_rus ;

void gen_vowels_rus (void) {
  int i;
  for (i = 0; _vowels_rus[i]; i++) {
    vowels_rus[conv_rus_win1251(_vowels_rus[i])] = 1;
  }
}
