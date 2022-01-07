
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct shash_desc {int dummy; } ;


 int crc32c_compute (int *,int const*,unsigned int) ;
 int * shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crc32c_sparc64_update(struct shash_desc *desc, const u8 *data,
     unsigned int len)
{
 u32 *crcp = shash_desc_ctx(desc);

 crc32c_compute(crcp, (const u64 *) data, len);

 return 0;
}
