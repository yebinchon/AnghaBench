
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

__attribute__((used)) static int md5_init(struct shash_desc *desc)
{
 struct md5_state *mctx = shash_desc_ctx(desc);

 mctx->hash[0] = MD5_H0;
 mctx->hash[1] = MD5_H1;
 mctx->hash[2] = MD5_H2;
 mctx->hash[3] = MD5_H3;
 mctx->byte_count = 0;

 return 0;
}
