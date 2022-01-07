
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int char3_to_int (char *a) {
  return (((int) a[0]) << 16) + (((int) a[1]) << 8) + a[2];
}
