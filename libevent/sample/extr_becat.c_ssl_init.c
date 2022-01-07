
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_load_crypto_strings () ;
 int OpenSSL_add_all_algorithms () ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;

__attribute__((used)) static inline void ssl_init(void)
{
 SSL_library_init();
 ERR_load_crypto_strings();
 SSL_load_error_strings();
 OpenSSL_add_all_algorithms();
}
