
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int convert_unpacked_extra_field_num (int fnum) {
  fnum -= 8;
  if (fnum >= 0) {
    fnum >>= 1;
  }
  return fnum + 8;
}
