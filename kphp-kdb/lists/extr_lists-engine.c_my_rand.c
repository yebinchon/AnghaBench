
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ lrand48 () ;

__attribute__((used)) static inline int my_rand (int N) {
  return ((unsigned long long) lrand48() * N) >> 31;
}
