
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int keys ;
 size_t offsetof (int ,int ) ;
 int watchcat ;

inline size_t get_watchcat_size_q (void) {
  return offsetof (watchcat, keys);
}
