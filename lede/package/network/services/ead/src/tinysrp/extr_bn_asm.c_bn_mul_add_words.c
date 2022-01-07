
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;


 int HBITS (int ) ;
 int LBITS (int ) ;
 int assert (int) ;
 int mul_add (int ,int ,int ,int ,int ) ;

BN_ULONG bn_mul_add_words(BN_ULONG *rp, BN_ULONG *ap, int num, BN_ULONG w)
 {
 BN_ULONG c=0;
 BN_ULONG bl,bh;

 assert(num >= 0);
 if (num <= 0) return((BN_ULONG)0);

 bl=LBITS(w);
 bh=HBITS(w);

 for (;;)
  {
  mul_add(rp[0],ap[0],bl,bh,c);
  if (--num == 0) break;
  mul_add(rp[1],ap[1],bl,bh,c);
  if (--num == 0) break;
  mul_add(rp[2],ap[2],bl,bh,c);
  if (--num == 0) break;
  mul_add(rp[3],ap[3],bl,bh,c);
  if (--num == 0) break;
  ap+=4;
  rp+=4;
  }
 return(c);
 }
