
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct shash_desc {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32p (int *) ;
 int * shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crc32_pclmul_final(struct shash_desc *desc, u8 *out)
{
 u32 *crcp = shash_desc_ctx(desc);

 *(__le32 *)out = cpu_to_le32p(crcp);
 return 0;
}
