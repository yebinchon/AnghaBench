
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct md5_state {scalar_t__ byte_count; int * hash; } ;


 int MD5_H0 ;
 int MD5_H1 ;
 int MD5_H2 ;
 int MD5_H3 ;
 struct md5_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ppc_md5_init(struct shash_desc *desc)
{
 struct md5_state *sctx = shash_desc_ctx(desc);

 sctx->hash[0] = MD5_H0;
 sctx->hash[1] = MD5_H1;
 sctx->hash[2] = MD5_H2;
 sctx->hash[3] = MD5_H3;
 sctx->byte_count = 0;

 return 0;
}
