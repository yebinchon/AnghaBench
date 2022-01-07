
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_ext_small_t ;
struct tree_payload {int flags; int global_id; int value; } ;
struct heap_entry {int node; } ;


 int LARGE_NODE (int *) ;
 struct tree_payload* LPAYLOAD (int *) ;
 int __vsort_and_mask ;
 int __vsort_scanned ;
 int __vsort_xor_mask ;
 struct heap_entry* heap_insert (int ,int ) ;

__attribute__((used)) static int btree_scan_node (tree_ext_small_t *T) {
  struct tree_payload *P = LPAYLOAD (T);
  if (((P->flags ^ __vsort_xor_mask) & __vsort_and_mask) != 0) {
    return 0;
  }
  struct heap_entry *h = heap_insert (P->value, P->global_id);
  if (h) {
    h->node = LARGE_NODE(T);
  }
  __vsort_scanned++;
  return 1;
}
