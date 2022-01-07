
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int data_size ;
 int h ;
 int kh_del (int ,int,unsigned int) ;
 int kh_destroy (int ,int) ;
 int kh_init (int ) ;
 unsigned int kh_put (int ,int,char*,int*) ;
 int kh_size (int) ;
 int khash_t (int ) ;
 int printf (char*,int) ;
 int str ;
 char** str_data ;

void ht_khash_str()
{
 int i, ret;
 char **data = str_data;
 khash_t(str) *h;
 unsigned k;

 h = kh_init(str);
 for (i = 0; i < data_size; ++i) {
  k = kh_put(str, h, data[i], &ret);
  if (!ret) kh_del(str, h, k);
 }
 printf("[ht_khash_int] size: %u\n", kh_size(h));
 kh_destroy(str, h);
}
