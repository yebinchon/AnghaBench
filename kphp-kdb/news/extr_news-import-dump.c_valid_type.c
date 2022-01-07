
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int allowed_types_mask ;

__attribute__((used)) static inline int valid_type (unsigned t) {
  return t < 32 && ((allowed_types_mask >> t) & 1);
}
