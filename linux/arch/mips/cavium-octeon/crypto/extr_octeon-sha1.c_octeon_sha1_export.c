
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha1_state {int dummy; } ;


 int memcpy (void*,struct sha1_state*,int) ;
 struct sha1_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int octeon_sha1_export(struct shash_desc *desc, void *out)
{
 struct sha1_state *sctx = shash_desc_ctx(desc);

 memcpy(out, sctx, sizeof(*sctx));
 return 0;
}
