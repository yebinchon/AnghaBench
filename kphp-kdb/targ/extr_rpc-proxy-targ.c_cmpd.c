
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cmpd (const void *_a, const void *_b) {
  return *(int *)_b - *(int *)_a;
}
