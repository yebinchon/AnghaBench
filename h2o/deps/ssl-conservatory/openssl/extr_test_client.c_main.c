
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_free_all (int *) ;
 int BIO_get_ssl (int *,int **) ;
 int * BIO_new_ssl_connect (int *) ;
 int BIO_set_conn_hostname (int *,int ) ;
 int BIO_ssl_shutdown (int *) ;
 int ERR_free_strings () ;
 int ERR_print_errors_fp (int ) ;
 int EVP_cleanup () ;
 scalar_t__ MatchFound ;
 int RAND_status () ;
 int SECURE_CIPHER_LIST ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_load_verify_locations (int *,int ,int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_cipher_list (int *,int ) ;
 int SSL_CTX_set_verify (int *,int ,int *) ;
 int SSL_VERIFY_PEER ;
 scalar_t__ SSL_do_handshake (int *) ;
 int * SSL_get_peer_certificate (int *) ;
 long SSL_get_verify_result (int *) ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int TARGET_HOST ;
 int TARGET_SERVER ;
 int TLSv1_client_method () ;
 int TRUSTED_CA_PATHNAME ;
 long X509_V_OK ;
 int X509_free (int *) ;
 char* X509_verify_cert_error_string (long) ;
 int fprintf (int ,char*,...) ;
 int send_http_get_and_print (int *) ;
 int stderr ;
 scalar_t__ validate_hostname (int ,int *) ;

int main(int argc, char *argv[]) {
 BIO *sbio;
 SSL_CTX *ssl_ctx;
 SSL *ssl;
 X509 *server_cert;


 SSL_library_init();
 SSL_load_error_strings();


 if(RAND_status() != 1) {
  fprintf(stderr, "OpenSSL PRNG not seeded with enough data.");
  goto error_1;
 }

 ssl_ctx = SSL_CTX_new(TLSv1_client_method());


 SSL_CTX_set_verify(ssl_ctx, SSL_VERIFY_PEER, ((void*)0));

 if (SSL_CTX_load_verify_locations(ssl_ctx, TRUSTED_CA_PATHNAME, ((void*)0)) != 1) {
  fprintf(stderr, "Couldn't load certificate trust store.\n");
  goto error_2;
 }


 if (SSL_CTX_set_cipher_list(ssl_ctx, SECURE_CIPHER_LIST) != 1)
  goto error_2;


 sbio = BIO_new_ssl_connect(ssl_ctx);
 BIO_get_ssl(sbio, &ssl);
 if(!ssl) {
   fprintf(stderr, "Can't locate SSL pointer\n");
  goto error_3;
 }


 BIO_set_conn_hostname(sbio, TARGET_SERVER);
 if(SSL_do_handshake(ssl) <= 0) {

  long verify_err = SSL_get_verify_result(ssl);
  if (verify_err != X509_V_OK) {

   fprintf(stderr, "Certificate chain validation failed: %s\n", X509_verify_cert_error_string(verify_err));
  }
  else {

   ERR_print_errors_fp(stderr);
  }
  goto error_3;
 }


 server_cert = SSL_get_peer_certificate(ssl);
 if (server_cert == ((void*)0)) {


  goto error_4;
 }


 if (validate_hostname(TARGET_HOST, server_cert) != MatchFound) {
  fprintf(stderr, "Hostname validation failed.\n");
  goto error_5;
 }


 send_http_get_and_print(sbio);


error_5:
 X509_free(server_cert);

error_4:
 BIO_ssl_shutdown(sbio);

error_3:
 BIO_free_all(sbio);

error_2:
 SSL_CTX_free(ssl_ctx);

error_1:
    EVP_cleanup();
    ERR_free_strings();

 return 0;
}
