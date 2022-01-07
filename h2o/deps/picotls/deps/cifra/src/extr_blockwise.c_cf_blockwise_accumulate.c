
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cf_blockwise_in_fn ;


 int cf_blockwise_accumulate_final (int *,size_t*,size_t,void const*,size_t,int ,int ,void*) ;

void cf_blockwise_accumulate(uint8_t *partial, size_t *npartial, size_t nblock,
                             const void *inp, size_t nbytes,
                             cf_blockwise_in_fn process,
                             void *ctx)
{
  cf_blockwise_accumulate_final(partial, npartial, nblock,
                                inp, nbytes,
                                process, process, ctx);
}
