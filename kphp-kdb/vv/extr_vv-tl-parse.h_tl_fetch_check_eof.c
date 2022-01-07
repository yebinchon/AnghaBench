
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_IN_REMAINING ;

__attribute__((used)) static inline int tl_fetch_check_eof (void) {
  return !TL_IN_REMAINING;
}
