
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdfour {int totalN; } ;
typedef int byte ;


 int copy64 (int *,int *) ;
 struct mdfour* m ;
 int mdfour64 (int *) ;
 int mdfour_tail (int *,int) ;

__attribute__((used)) static void mdfour_update(struct mdfour *md, byte *in, int n)
{
 uint32_t M[16];

 m = md;

 if (n == 0) mdfour_tail(in, n);

 while (n >= 64) {
  copy64(M, in);
  mdfour64(M);
  in += 64;
  n -= 64;
  m->totalN += 64;
 }

 mdfour_tail(in, n);
}
