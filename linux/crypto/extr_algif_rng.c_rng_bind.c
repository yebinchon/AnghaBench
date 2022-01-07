
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 void* crypto_alloc_rng (char const*,int ,int ) ;

__attribute__((used)) static void *rng_bind(const char *name, u32 type, u32 mask)
{
 return crypto_alloc_rng(name, type, mask);
}
