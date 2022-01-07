
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ATTEMPT_NUM ;

__attribute__((used)) static inline int tl_fetch_attempt_num (void) {
  return TL_ATTEMPT_NUM;
}
