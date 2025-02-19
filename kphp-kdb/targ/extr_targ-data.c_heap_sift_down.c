
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {float expected_gain; size_t domain; } ;
struct TYPE_3__ {int heapref; } ;


 TYPE_2__* H ;
 int HN ;
 TYPE_1__* HS ;

__attribute__((used)) static inline int heap_sift_down (int i, float expected_gain) {
  int j;
  while (1) {
    j = i * 2;
    if (j > HN) {
      break;
    }
    if (j < HN && H[j + 1].expected_gain < H[j].expected_gain) {
      j++;
    }
    if (H[j].expected_gain >= expected_gain) {
      break;
    }
    if (H[j].domain >= 0) {
      HS[H[j].domain].heapref = i;
    }
    H[i] = H[j];
    i = j;
  }
  return i;
}
