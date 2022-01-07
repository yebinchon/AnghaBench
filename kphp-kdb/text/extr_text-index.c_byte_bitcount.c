
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* prec_mask_intcount ;

__attribute__((used)) static inline int byte_bitcount (int x) {
  return prec_mask_intcount [x];
}
