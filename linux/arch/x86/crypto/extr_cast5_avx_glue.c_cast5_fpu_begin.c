
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {int dummy; } ;


 int CAST5_BLOCK_SIZE ;
 int CAST5_PARALLEL_BLOCKS ;
 int glue_fpu_begin (int ,int ,struct skcipher_walk*,int,unsigned int) ;

__attribute__((used)) static inline bool cast5_fpu_begin(bool fpu_enabled, struct skcipher_walk *walk,
       unsigned int nbytes)
{
 return glue_fpu_begin(CAST5_BLOCK_SIZE, CAST5_PARALLEL_BLOCKS,
         walk, fpu_enabled, nbytes);
}
