
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int byte ;
struct TYPE_2__ {int totalN; } ;


 int Com_Memcpy (int*,int*,int) ;
 int Com_Memset (int*,int ,int) ;
 int copy4 (int*,int) ;
 int copy64 (int*,int*) ;
 TYPE_1__* m ;
 int mdfour64 (int*) ;

__attribute__((used)) static void mdfour_tail(byte *in, int n)
{
 byte buf[128];
 uint32_t M[16];
 uint32_t b;

 m->totalN += n;

 b = m->totalN * 8;

 Com_Memset(buf, 0, 128);
 if (n) Com_Memcpy(buf, in, n);
 buf[n] = 0x80;

 if (n <= 55) {
  copy4(buf+56, b);
  copy64(M, buf);
  mdfour64(M);
 } else {
  copy4(buf+120, b);
  copy64(M, buf);
  mdfour64(M);
  copy64(M, buf+64);
  mdfour64(M);
 }
}
