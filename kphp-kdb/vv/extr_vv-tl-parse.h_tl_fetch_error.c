
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TL_ERROR ;

__attribute__((used)) static inline int tl_fetch_error (void) {
  return TL_ERROR != 0;
}
