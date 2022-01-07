
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CACHE_CLR ;
 int CCR2_L2E ;
 int mb () ;
 int mfcr_ccr2 () ;
 int mtcr (char*,unsigned int) ;

__attribute__((used)) static void cache_op_all(unsigned int value, unsigned int l2)
{
 mtcr("cr17", value | CACHE_CLR);
 mb();

 if (l2 && (mfcr_ccr2() & CCR2_L2E)) {
  mtcr("cr24", value | CACHE_CLR);
  mb();
 }
}
