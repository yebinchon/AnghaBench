
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned int top; long* d; } ;
typedef long BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 unsigned int BN_BYTES ;
 TYPE_1__* BN_new () ;
 int * bn_expand (TYPE_1__*,int) ;
 int bn_fix_top (TYPE_1__*) ;

BIGNUM *BN_bin2bn(const unsigned char *s, int len, BIGNUM *ret)
 {
 unsigned int i,m;
 unsigned int n;
 BN_ULONG l;

 if (ret == ((void*)0)) ret=BN_new();
 if (ret == ((void*)0)) return(((void*)0));
 l=0;
 n=len;
 if (n == 0)
  {
  ret->top=0;
  return(ret);
  }
 if (bn_expand(ret,(int)(n+2)*8) == ((void*)0))
  return(((void*)0));
 i=((n-1)/BN_BYTES)+1;
 m=((n-1)%(BN_BYTES));
 ret->top=i;
 while (n-- > 0)
  {
  l=(l<<8L)| *(s++);
  if (m-- == 0)
   {
   ret->d[--i]=l;
   l=0;
   m=BN_BYTES-1;
   }
  }


 bn_fix_top(ret);
 return(ret);
 }
