
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_split_min ;
 int log_split_mod ;

inline int mymul (int x) {
  if (x > 0) {
    return (x - 1) * log_split_mod + log_split_min;
  } else {
    return (x + 1) * log_split_mod - log_split_min;
  }
}
