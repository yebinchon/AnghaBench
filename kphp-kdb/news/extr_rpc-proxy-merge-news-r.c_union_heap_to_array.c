
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct news_item {scalar_t__ weight; } ;
struct TYPE_2__ {struct news_item entry; } ;


 TYPE_1__* UH ;
 void* UH_limit ;
 void* UH_size ;
 void* UH_total ;
 int assert (int) ;
 int union_heap_insert (struct news_item) ;

__attribute__((used)) static void union_heap_to_array (void) {
  int p;
  UH_total = UH_size;
  for (p = UH_size; p >= 2; p--) {
    struct news_item x = UH[p].entry;
    assert (UH[1].entry.weight <= x.weight);
    UH[p].entry = UH[1].entry;
    UH_size --;
    UH_limit = UH_size;
    union_heap_insert (x);
  }
}
