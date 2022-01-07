
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int global_id; int value; } ;


 TYPE_1__* H ;
 int HN ;
 int assert (int) ;
 int heap_sift_down (int ,int ) ;

__attribute__((used)) static inline void heap_pop (void) {
  assert (HN > 0);
  if (--HN) {
    int i = heap_sift_down (H[HN+1].value, H[HN+1].global_id);
    H[i] = H[HN+1];
  }
}
