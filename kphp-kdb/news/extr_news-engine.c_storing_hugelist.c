
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int storing_hugelist (int act) {
  return (1 << act) & ((1 << 3) + (1 << 4) + (1 << 8));
}
