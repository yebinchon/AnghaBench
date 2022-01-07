
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_item_f (long long,int ) ;
 int set_hash_item (int ,long long) ;

__attribute__((used)) static int set_hash (long long item_id, long long hash) {
  return set_hash_item (get_item_f (item_id, 0), hash);
}
