
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * syllable_exceptions_eng ;
 scalar_t__* vowels_eng ;

int short_syllable_eng (int *s, int n) {
  if (n >= 2 && vowels_eng[s[n - 2]]) {
     if ((n == 2 && !vowels_eng[s[n - 1]]) ||
                   (!vowels_eng[s[n - 3]] && !vowels_eng[s[n - 1]] && !syllable_exceptions_eng[s[n - 1]])) {
       return 1;
     }
  }
  return 0;
}
