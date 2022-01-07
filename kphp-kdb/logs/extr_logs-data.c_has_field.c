
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; } ;
typedef TYPE_1__ event ;


 scalar_t__ use_default ;

inline int has_field (event *e, int id) {
  return use_default || ((e->mask >> id) & 1);
}
