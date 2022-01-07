
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t conv_eng (char) ;
 int* syllable_exceptions_eng ;

void gen_syllable_exceptions_eng (void) {
  syllable_exceptions_eng[conv_eng('w')] = 1;
  syllable_exceptions_eng[conv_eng('x')] = 1;
  syllable_exceptions_eng[27] = 1;
}
