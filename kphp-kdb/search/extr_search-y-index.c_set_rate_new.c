
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_item_f (long long,int ) ;
 int set_rate_item (int ,int,int) ;

__attribute__((used)) static int set_rate_new (long long item_id, int n, int rate) {
  return set_rate_item (get_item_f (item_id, 0), n, rate);
}
