
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int key; int val; } ;
typedef TYPE_1__ int_packed_t ;


 int data_size ;
 int h ;
 unsigned int* int_data ;
 int ipk ;
 int kh_del (int ,int,unsigned int) ;
 int kh_destroy (int ,int) ;
 int kh_init (int ) ;
 unsigned int kh_put (int ,int,TYPE_1__,int*) ;
 int kh_size (int) ;
 int khash_t (int ) ;
 int printf (char*,int,int) ;

void ht_khash_packed()
{
 int i, ret;
 unsigned *data = int_data;
 khash_t(ipk) *h;
 unsigned k;

 h = kh_init(ipk);
 for (i = 0; i < data_size; ++i) {
  int_packed_t x;
  x.key = data[i]; x.val = i&0xff;
  k = kh_put(ipk, h, x, &ret);
  if (!ret) kh_del(ipk, h, k);
 }
 printf("[ht_khash_packed] size: %u (sizeof=%ld)\n", kh_size(h), sizeof(int_packed_t));
 kh_destroy(ipk, h);
}
