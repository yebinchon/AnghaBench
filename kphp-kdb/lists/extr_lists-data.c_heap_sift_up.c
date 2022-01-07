
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_t ;
typedef int global_id_t ;


 int * H ;
 int HN ;
 scalar_t__ heap_cmp (int *,int ,int ) ;

__attribute__((used)) static inline int heap_sift_up (value_t value, global_id_t global_id) {
  int i = ++HN, j;
  while (i > 1) {
    j = (i >> 1);
    if (heap_cmp (&H[j], value, global_id) <= 0) {
      break;
    }
    H[i] = H[j];
    i = j;
  }
  return i;
}
