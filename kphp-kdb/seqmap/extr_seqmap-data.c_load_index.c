
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfs_file_handle_t ;


 int NODE_TYPE_PLUS ;
 int NODE_TYPE_SURE ;
 void* alloc_item (int,int*,int,int ) ;
 int assert (int ) ;
 scalar_t__ index_entries ;
 void* max_item ;
 void* min_item ;

int load_index (kfs_file_handle_t Index) {
  if (!Index) {
    index_entries = 0;
    min_item = alloc_item (0, 0, NODE_TYPE_PLUS | NODE_TYPE_SURE, 0);
    static int key[1000];
    int i;
    for (i = 0; i < 1000; i++) { key[i] = 0x7fffffff; }
    max_item = alloc_item (1000, key, NODE_TYPE_PLUS | NODE_TYPE_SURE, 0);
    return 0;
  }
  assert (0);
  return 0;
}
