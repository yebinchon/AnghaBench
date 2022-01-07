
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long x; } ;


 scalar_t__ MAX_DIFF ;
 TYPE_1__* to_del ;
 scalar_t__ to_del_n ;
 int to_del_overflow ;

inline int insert_to_del (long long x) {
  if (to_del_n < MAX_DIFF) {
    to_del[to_del_n++].x = x;
    return 1;
  } else {
    to_del_overflow++;
    return 0;
  }
}
