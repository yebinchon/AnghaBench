
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
typedef int sha1_transform_fn ;


 scalar_t__ sha1_transform_ssse3 ;
 int sha1_update (struct shash_desc*,int const*,unsigned int,int *) ;

__attribute__((used)) static int sha1_ssse3_update(struct shash_desc *desc, const u8 *data,
        unsigned int len)
{
 return sha1_update(desc, data, len,
   (sha1_transform_fn *) sha1_transform_ssse3);
}
