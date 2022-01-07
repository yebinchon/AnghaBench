
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct md5_state {int dummy; } ;


 int memcpy (void*,struct md5_state*,int) ;
 struct md5_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int octeon_md5_export(struct shash_desc *desc, void *out)
{
 struct md5_state *ctx = shash_desc_ctx(desc);

 memcpy(out, ctx, sizeof(*ctx));
 return 0;
}
