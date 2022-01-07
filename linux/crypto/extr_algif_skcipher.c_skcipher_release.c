
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_free_skcipher (void*) ;

__attribute__((used)) static void skcipher_release(void *private)
{
 crypto_free_skcipher(private);
}
