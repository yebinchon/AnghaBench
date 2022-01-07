
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* _double_eng ;
 size_t conv_eng (scalar_t__) ;
 int* double_eng ;

void gen_double_eng (void) {
  int i;
  for (i = 0; _double_eng[i]; i++) {
    double_eng[conv_eng(_double_eng[i])] = 1;
  }
}
