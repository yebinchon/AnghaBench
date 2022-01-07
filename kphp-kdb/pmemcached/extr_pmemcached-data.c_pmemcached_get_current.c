
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data {int dummy; } ;
struct TYPE_2__ {struct data data; } ;


 TYPE_1__* current_cache ;

inline struct data pmemcached_get_current (void) {
  return current_cache->data;
}
