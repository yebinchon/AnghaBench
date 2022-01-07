
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int tz_offset (char timezone) {
  return ((timezone & 0x1F) - 12)*3600;
}
