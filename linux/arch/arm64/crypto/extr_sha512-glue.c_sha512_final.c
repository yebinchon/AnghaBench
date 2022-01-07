
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int sha512_finup (struct shash_desc*,int *,int ,int *) ;

__attribute__((used)) static int sha512_final(struct shash_desc *desc, u8 *out)
{
 return sha512_finup(desc, ((void*)0), 0, out);
}
