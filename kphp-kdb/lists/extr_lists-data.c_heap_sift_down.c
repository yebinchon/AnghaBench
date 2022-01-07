
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int value_t ;
typedef int global_id_t ;
struct TYPE_3__ {int global_id; int value; } ;


 TYPE_1__* H ;
 int HN ;
 scalar_t__ heap_cmp (TYPE_1__*,int ,int ) ;

__attribute__((used)) static inline int heap_sift_down (value_t value, global_id_t global_id) {
  int i = 1, j;
  while (1) {
    j = i*2;
    if (j > HN) {
      break;
    }
    if (j < HN && heap_cmp (&H[j+1], H[j].value, H[j].global_id) < 0) {
      j++;
    }
    if (heap_cmp (&H[j], value, global_id) >= 0) {
      break;
    }
    H[i] = H[j];
    i = j;
  }
  return i;
}
