
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_payload {int dummy; } ;
struct file_list_index_entry {int dummy; } ;
struct cyclic_buffer_entry {int dummy; } ;
typedef int ltree_t ;


 int CB ;
 int CYCLIC_BUFFER_SIZE ;
 void* MAXINT ;
 int MAX_LIST_ID_INTS ;
 int MAX_OBJECT_ID_INTS ;
 int assert (int) ;
 int cyclic_buffer_entry_ints ;
 int cyclic_buffer_entry_size ;
 int file_list_index_entry_size ;
 int list_id ;
 int list_id_bytes ;
 int list_id_ints ;
 void* list_struct_size ;
 int list_t ;
 int ltree_node_size ;
 void** max_list_id ;
 void** max_list_object_pair ;
 void** max_object_id ;
 int object_id_bytes ;
 int object_id_ints ;
 int object_list_bytes ;
 int object_list_ints ;
 void* offsetof (int ,int ) ;
 int payload_offset ;
 void* tree_ext_global_node_size ;
 int tree_ext_global_t ;
 int tree_ext_large_node_size ;
 int tree_ext_small_node_size ;
 int tree_ext_small_t ;
 int x ;
 int z ;
 int zzmalloc (int) ;

__attribute__((used)) static void compute_struct_sizes (void) {
  assert (list_id_ints > 0 && list_id_ints <= MAX_LIST_ID_INTS);
  assert (object_id_ints > 0 && object_id_ints <= MAX_OBJECT_ID_INTS);
  assert (!CB);
  CB = zzmalloc (CYCLIC_BUFFER_SIZE * cyclic_buffer_entry_size);
  assert (CB);

}
