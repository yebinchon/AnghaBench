
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct shash_desc {int dummy; } ;
typedef int __be32 ;


 int SHA256_DIGEST_SIZE ;
 int memzero_explicit (int *,int) ;
 int ppc_spe_sha256_final (struct shash_desc*,int *) ;

__attribute__((used)) static int ppc_spe_sha224_final(struct shash_desc *desc, u8 *out)
{
 u32 D[SHA256_DIGEST_SIZE >> 2];
 __be32 *dst = (__be32 *)out;

 ppc_spe_sha256_final(desc, (u8 *)D);


 dst[0] = D[0];
 dst[1] = D[1];
 dst[2] = D[2];
 dst[3] = D[3];
 dst[4] = D[4];
 dst[5] = D[5];
 dst[6] = D[6];


 memzero_explicit(D, SHA256_DIGEST_SIZE);
 return 0;
}
