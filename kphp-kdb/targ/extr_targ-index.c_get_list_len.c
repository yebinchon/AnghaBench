
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int get_list_len (void *ptr) {
  int l = 0;
  while (ptr) {
    ptr = *(void **) ptr;
    l++;
  }
  return l;
}
