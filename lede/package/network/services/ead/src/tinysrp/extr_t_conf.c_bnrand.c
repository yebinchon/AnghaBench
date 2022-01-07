
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_bin2bn (unsigned char*,int,int *) ;
 int BN_zero (int *) ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int) ;
 int memset (unsigned char*,int ,int) ;
 int t_random (unsigned char*,int) ;

__attribute__((used)) static int bnrand(int pseudorand, BIGNUM *rnd, int bits, int top, int bottom)
 {
 unsigned char *buf=((void*)0);
 int ret=0,bit,bytes,mask;

 if (bits == 0)
  {
  BN_zero(rnd);
  return 1;
  }

 bytes=(bits+7)/8;
 bit=(bits-1)%8;
 mask=0xff<<bit;

 buf=(unsigned char *)malloc(bytes);
 if (buf == ((void*)0))
  {
  goto err;
  }




 t_random(buf, bytes);

 if (top)
  {
  if (bit == 0)
   {
   buf[0]=1;
   buf[1]|=0x80;
   }
  else
   {
   buf[0]|=(3<<(bit-1));
   buf[0]&= ~(mask<<1);
   }
  }
 else
  {
  buf[0]|=(1<<bit);
  buf[0]&= ~(mask<<1);
  }
 if (bottom)
  buf[bytes-1]|=1;
 if (!BN_bin2bn(buf,bytes,rnd)) goto err;
 ret=1;
err:
 if (buf != ((void*)0))
  {
  memset(buf,0,bytes);
  free(buf);
  }
 return(ret);
 }
