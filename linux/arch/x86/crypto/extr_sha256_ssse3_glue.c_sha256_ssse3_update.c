
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int _sha256_update (struct shash_desc*,int const*,unsigned int,int ) ;
 int sha256_transform_ssse3 ;

__attribute__((used)) static int sha256_ssse3_update(struct shash_desc *desc, const u8 *data,
    unsigned int len)
{
 return _sha256_update(desc, data, len, sha256_transform_ssse3);
}
