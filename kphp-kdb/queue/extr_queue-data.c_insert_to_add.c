
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long x; int y; } ;


 size_t MAX_DIFF ;
 TYPE_1__* to_add ;
 size_t to_add_n ;
 int to_add_overflow ;

inline int insert_to_add (long long x, int y) {
  if (to_add_n < MAX_DIFF) {
    to_add[to_add_n].x = x;
    to_add[to_add_n].y = y;
    to_add_n++;
    return 1;
  } else {
    to_add_overflow++;
    return 0;
  }
}
