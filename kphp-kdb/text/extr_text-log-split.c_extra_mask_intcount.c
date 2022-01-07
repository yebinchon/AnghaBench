
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_EXTRA_MASK ;
 int* prec_mask_intcount ;

__attribute__((used)) static inline int extra_mask_intcount (int mask) {
  return prec_mask_intcount[mask & MAX_EXTRA_MASK];
}
