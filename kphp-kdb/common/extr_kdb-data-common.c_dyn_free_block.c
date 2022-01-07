
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NX ;
typedef int MAGIC ;


 int DYN_FREE_MAGIC ;
 int * FreeBlocks ;
 int * FreeBlocksAligned ;
 int * FreeCnt ;
 int PTR_INTS ;
 int assert (int) ;

__attribute__((used)) static inline void dyn_free_block (void *p, int words) {
  assert (words >= PTR_INTS);
  FreeCnt[words]++;
  if (!((long) p & 7)) {
    NX(p) = FreeBlocksAligned[words];
    FreeBlocksAligned[words] = p;
  } else {
    NX(p) = FreeBlocks[words];
    FreeBlocks[words] = p;
  }
  if (words > PTR_INTS) {
    MAGIC(p) = DYN_FREE_MAGIC;
  }
}
