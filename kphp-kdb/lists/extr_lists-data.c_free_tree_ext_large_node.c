
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_ext_large_t ;
struct tree_payload {scalar_t__ text; } ;


 scalar_t__ MDataEnd ;
 int NODE_TYPE (int *) ;
 struct tree_payload* PAYLOAD (int *) ;
 int TF_PLUS ;
 int TF_ZERO ;
 int alloc_large_nodes ;
 int assert (int) ;
 scalar_t__ empty_string ;
 int get_text_data_len (int *) ;
 int tree_ext_large_node_size ;
 int zfree (int *,int ) ;

__attribute__((used)) static inline void free_tree_ext_large_node (tree_ext_large_t *T) {
  int tp = NODE_TYPE (T);
  struct tree_payload *P = PAYLOAD (T);
  if (tp == TF_ZERO || tp == TF_PLUS) {
    if (P->text && P->text != empty_string) {
      assert (P->text >= MDataEnd);
      zfree (P->text, get_text_data_len (P->text));
    }
    P->text = 0;
  } else {
    assert (!P->text);
  }
  alloc_large_nodes--;
  zfree (T, tree_ext_large_node_size);
}
