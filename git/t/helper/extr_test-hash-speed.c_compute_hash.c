
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct git_hash_algo {int (* final_fn ) (int *,int *) ;int (* update_fn ) (int *,void const*,size_t) ;int (* init_fn ) (int *) ;} ;
typedef int git_hash_ctx ;


 int stub1 (int *) ;
 int stub2 (int *,void const*,size_t) ;
 int stub3 (int *,int *) ;

__attribute__((used)) static inline void compute_hash(const struct git_hash_algo *algo, git_hash_ctx *ctx, uint8_t *final, const void *p, size_t len)
{
 algo->init_fn(ctx);
 algo->update_fn(ctx, p, len);
 algo->final_fn(final, ctx);
}
