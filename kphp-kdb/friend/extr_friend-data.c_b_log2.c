
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __builtin_ctz (unsigned int) ;

__attribute__((used)) static int b_log2 (unsigned x) {
  x &= -x;
  return x ? __builtin_ctz (x) : -1;
}
