
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_free_ahash (void*) ;

__attribute__((used)) static void hash_release(void *private)
{
 crypto_free_ahash(private);
}
