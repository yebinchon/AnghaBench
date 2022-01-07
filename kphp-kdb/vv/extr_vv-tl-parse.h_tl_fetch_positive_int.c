
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tl_fetch_int_range (int,int) ;

__attribute__((used)) static inline int tl_fetch_positive_int (void) {
  return tl_fetch_int_range (1, 0x7fffffff);
}
