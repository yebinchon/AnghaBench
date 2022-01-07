
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void *align16 (void *ptr) {
  return (void *) (((uintptr_t) ptr + 15) & -16L);
}
