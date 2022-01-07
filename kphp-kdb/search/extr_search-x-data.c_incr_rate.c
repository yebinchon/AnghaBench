
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int incr_rate_new (long long,int ,int) ;

__attribute__((used)) static int incr_rate (long long item_id, int rate_incr) {
  return incr_rate_new (item_id, 0, rate_incr);
}
