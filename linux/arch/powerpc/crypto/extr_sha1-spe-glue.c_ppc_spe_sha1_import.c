
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha1_state {int dummy; } ;


 int memcpy (struct sha1_state*,void const*,int) ;
 struct sha1_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ppc_spe_sha1_import(struct shash_desc *desc, const void *in)
{
 struct sha1_state *sctx = shash_desc_ctx(desc);

 memcpy(sctx, in, sizeof(*sctx));
 return 0;
}
