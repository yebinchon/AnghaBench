
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int key; int val; } ;
typedef TYPE_1__ int_unpack_t ;


 int data_size ;
 int h ;
 unsigned int* int_data ;
 int iun ;
 int kh_del (int ,int,unsigned int) ;
 int kh_destroy (int ,int) ;
 int kh_init (int ) ;
 unsigned int kh_put (int ,int,TYPE_1__,int*) ;
 int kh_size (int) ;
 int khash_t (int ) ;
 int printf (char*,int,int) ;

void ht_khash_unpack()
{
 int i, ret;
 unsigned *data = int_data;
 khash_t(iun) *h;
 unsigned k;

 h = kh_init(iun);
 for (i = 0; i < data_size; ++i) {
  int_unpack_t x;
  x.key = data[i]; x.val = i&0xff;
  k = kh_put(iun, h, x, &ret);
  if (!ret) kh_del(iun, h, k);
 }
 printf("[ht_khash_unpack] size: %u (sizeof=%ld)\n", kh_size(h), sizeof(int_unpack_t));
 kh_destroy(iun, h);
}
