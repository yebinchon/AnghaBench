
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BYTES ;
 int BN_num_bytes (TYPE_1__ const*) ;

int BN_bn2bin(const BIGNUM *a, unsigned char *to)
 {
 int n,i;
 BN_ULONG l;

 n=i=BN_num_bytes(a);
 while (i-- > 0)
  {
  l=a->d[i/BN_BYTES];
  *(to++)=(unsigned char)(l>>(8*(i%BN_BYTES)))&0xff;
  }
 return(n);
 }
