
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct blkcipher_walk {int out; scalar_t__ alignmask; scalar_t__ buffer; } ;


 scalar_t__ ALIGN (unsigned long,scalar_t__) ;
 int * blkcipher_get_spot (int *,unsigned int) ;
 int scatterwalk_copychunks (int *,int *,unsigned int,int) ;

__attribute__((used)) static inline void blkcipher_done_slow(struct blkcipher_walk *walk,
           unsigned int bsize)
{
 u8 *addr;

 addr = (u8 *)ALIGN((unsigned long)walk->buffer, walk->alignmask + 1);
 addr = blkcipher_get_spot(addr, bsize);
 scatterwalk_copychunks(addr, &walk->out, bsize, 1);
}
