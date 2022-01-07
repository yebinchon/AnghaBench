
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t
factorial(unsigned x) {
 uint64_t ret = 1;
 unsigned i;

 for (i = 2; i <= x; i++) {
  ret *= (uint64_t)i;
 }

 return ret;
}
