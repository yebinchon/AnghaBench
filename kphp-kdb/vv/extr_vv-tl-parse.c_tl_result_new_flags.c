
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int tl_result_new_flags (int old_flags) {
  return old_flags & 0xffff;
}
