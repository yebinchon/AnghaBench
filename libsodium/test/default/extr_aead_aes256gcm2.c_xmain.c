
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ crypto_aead_aes256gcm_is_available () ;
 int printf (char*) ;
 int tv () ;

int
main(void)
{
    if (crypto_aead_aes256gcm_is_available()) {
        tv();
    }
    printf("OK\n");

    return 0;
}
