
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int __chksum_finup (int ,int const*,unsigned int,int *) ;

__attribute__((used)) static int chksum_digest(struct shash_desc *desc, const u8 *data,
    unsigned int length, u8 *out)
{
 return __chksum_finup(0, data, length, out);
}
