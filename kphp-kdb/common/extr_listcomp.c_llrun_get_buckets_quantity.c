
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bsr (int) ;

__attribute__((used)) static inline int llrun_get_buckets_quantity (int max_gap) {
  return bsr (max_gap) + 1;
}
