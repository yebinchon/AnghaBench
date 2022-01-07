
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_load_crypto_strings () ;
 scalar_t__ OPENSSL_VERSION_NUMBER ;
 int OpenSSL_add_all_algorithms () ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 scalar_t__ SSLeay () ;
 int TT_DECLARE (char*,char*) ;

void
init_ssl(void)
{


 SSL_library_init();
 ERR_load_crypto_strings();
 SSL_load_error_strings();
 OpenSSL_add_all_algorithms();
 if (SSLeay() != OPENSSL_VERSION_NUMBER) {
  TT_DECLARE("WARN",
   ("Version mismatch for openssl: compiled with %lx but running with %lx",
   (unsigned long)OPENSSL_VERSION_NUMBER, (unsigned long)SSLeay()));
 }

}
