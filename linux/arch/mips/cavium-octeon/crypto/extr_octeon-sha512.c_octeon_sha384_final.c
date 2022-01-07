
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int memcpy (int *,int *,int) ;
 int memzero_explicit (int *,int) ;
 int octeon_sha512_final (struct shash_desc*,int *) ;

__attribute__((used)) static int octeon_sha384_final(struct shash_desc *desc, u8 *hash)
{
 u8 D[64];

 octeon_sha512_final(desc, D);

 memcpy(hash, D, 48);
 memzero_explicit(D, 64);

 return 0;
}
