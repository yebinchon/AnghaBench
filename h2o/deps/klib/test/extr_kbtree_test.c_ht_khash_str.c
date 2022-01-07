
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KB_DEFAULT_SIZE ;
 int __kb_destroy (int) ;
 int data_size ;
 int h ;
 int kb_del (int ,int,char*) ;
 scalar_t__ kb_get (int ,int,char*) ;
 int kb_init (int ,int ) ;
 int kb_put (int ,int,char*) ;
 int kb_size (int) ;
 int kbtree_t (int ) ;
 int printf (char*,int) ;
 int str ;
 char** str_data ;

void ht_khash_str()
{
 int i;
 char **data = str_data;
 kbtree_t(str) *h;

 h = kb_init(str, KB_DEFAULT_SIZE);
 for (i = 0; i < data_size; ++i) {
  if (kb_get(str, h, data[i]) == 0) kb_put(str, h, data[i]);
  else kb_del(str, h, data[i]);
 }
 printf("[ht_khash_int] size: %d\n", kb_size(h));
 __kb_destroy(h);
}
