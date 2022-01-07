
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ round (double) ;

__attribute__((used)) static inline int weights_double_to_int (double x) {
  return (int) round (x * 1073741824.0);
}
