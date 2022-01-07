
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long item_id; } ;


 TYPE_1__* IndexItems ;
 long long MAX_ITEM_ID ;
 int idx_items ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline long long docid_to_itemid (int doc_id) {
  if (unlikely(doc_id < 0)) {
    return -1LL;
  }
  if (unlikely(doc_id >= idx_items)) {
    return MAX_ITEM_ID;
  }
  return IndexItems[doc_id].item_id;
}
