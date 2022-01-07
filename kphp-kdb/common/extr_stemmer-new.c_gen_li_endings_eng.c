
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* _li_endings_eng ;
 size_t conv_eng (scalar_t__) ;
 int* li_endings_eng ;

void gen_li_endings_eng (void) {
  int i;
  for (i = 0; _li_endings_eng[i]; i++) {
    li_endings_eng[conv_eng(_li_endings_eng[i])] = 1;
  }
}
