
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Nlist ;
typedef int ** Hideset ;


 int abort () ;
 int *** hidesets ;
 int nhidesets ;

int
checkhideset(int hs, Nlist *np)
{
 Hideset hsp;

 if (hs>=nhidesets)
  abort();
 for (hsp = hidesets[hs]; *hsp; hsp++) {
  if (*hsp == np)
   return 1;
 }
 return 0;
}
