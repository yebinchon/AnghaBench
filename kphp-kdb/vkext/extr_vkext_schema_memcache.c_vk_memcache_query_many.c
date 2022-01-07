
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct rpc_query {int qid; } ;
struct rpc_connection {int dummy; } ;
typedef int HashPosition ;


 scalar_t__ HASH_KEY_IS_STRING ;
 scalar_t__ SUCCESS ;
 int Z_ARRVAL_PP (int **) ;
 int add_assoc_bool (int *,char*,int ) ;
 int add_assoc_long (int *,char*,int ) ;
 int add_index_bool (int *,unsigned long,int ) ;
 int add_index_long (int *,unsigned long,int ) ;
 int array_init (int *) ;
 struct rpc_query* vk_memcache_query_one (struct rpc_connection*,double,int **) ;
 scalar_t__ zend_hash_get_current_data_ex (int ,void**,int *) ;
 scalar_t__ zend_hash_get_current_key_ex (int ,char**,unsigned int*,unsigned long*,int,int *) ;
 int zend_hash_internal_pointer_reset_ex (int ,int *) ;
 int zend_hash_move_forward_ex (int ,int *) ;

void vk_memcache_query_many (struct rpc_connection *c, zval **arr, double timeout, zval **r) {
  HashPosition pos;
  zend_hash_internal_pointer_reset_ex (Z_ARRVAL_PP (arr), &pos);
  zval **zkey;


  array_init (*r);
  while (zend_hash_get_current_data_ex (Z_ARRVAL_PP (arr), (void **)&zkey, &pos) == SUCCESS) {
    char *key;
    unsigned int key_len;
    unsigned long index;
    if (zend_hash_get_current_key_ex (Z_ARRVAL_PP (arr), &key, &key_len, &index, 1, &pos) == HASH_KEY_IS_STRING) {
      index = 0;
    } else {
      key = 0;
    }
    struct rpc_query *q = vk_memcache_query_one (c, timeout, zkey);
    zend_hash_move_forward_ex (Z_ARRVAL_PP(arr), &pos);
    if (key) {
      if (q) {
        add_assoc_long (*r, key, q->qid);
      } else {
        add_assoc_bool (*r, key, 0);
      }
    } else {
      if (q) {
        add_index_long (*r, index, q->qid);
      } else {
        add_index_bool (*r, index, 0);
      }
    }
  }



}
