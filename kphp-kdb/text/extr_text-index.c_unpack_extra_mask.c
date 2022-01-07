
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int unpack_extra_mask (int extra_mask) {
  int res = extra_mask & 0xff;
  res += 3*(extra_mask & 0x100);
  res += 6*(extra_mask & 0x200);
  res += 12*(extra_mask & 0x400);
  res += 24*(extra_mask & 0x800);
  return res;
}
