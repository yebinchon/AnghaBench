
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int memcpy (int *,int *,int) ;
 int memzero_explicit (int *,int) ;
 int sha512_sparc64_final (struct shash_desc*,int *) ;

__attribute__((used)) static int sha384_sparc64_final(struct shash_desc *desc, u8 *hash)
{
 u8 D[64];

 sha512_sparc64_final(desc, D);

 memcpy(hash, D, 48);
 memzero_explicit(D, 64);

 return 0;
}
