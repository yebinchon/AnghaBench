
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_entry {int index; int key; } ;


 int jv_cmp (int ,int ) ;
 int jv_copy (int ) ;

__attribute__((used)) static int sort_cmp(const void* pa, const void* pb) {
  const struct sort_entry* a = pa;
  const struct sort_entry* b = pb;
  int r = jv_cmp(jv_copy(a->key), jv_copy(b->key));

  return r ? r : (a->index - b->index);
}
