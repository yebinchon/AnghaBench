
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int TGR160_DIGEST_SIZE ;
 int TGR192_DIGEST_SIZE ;
 int memcpy (int *,int *,int ) ;
 int memzero_explicit (int *,int ) ;
 int tgr192_final (struct shash_desc*,int *) ;

__attribute__((used)) static int tgr160_final(struct shash_desc *desc, u8 * out)
{
 u8 D[64];

 tgr192_final(desc, D);
 memcpy(out, D, TGR160_DIGEST_SIZE);
 memzero_explicit(D, TGR192_DIGEST_SIZE);

 return 0;
}
