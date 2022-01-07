
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;
typedef int SSL_CTX ;
typedef int SSL ;


 int REDIS_ERR ;
 int REDIS_ERR_OTHER ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_load_verify_locations (int *,char const*,int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_info_callback (int *,int ) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_set_verify (int *,int ,int *) ;
 int SSL_CTX_use_PrivateKey_file (int *,char const*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int *,char const*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_VERIFY_PEER ;
 int SSL_free (int *) ;
 int SSL_library_init () ;
 int * SSL_new (int *) ;
 int SSL_set_tlsext_host_name (int *,char const*) ;
 int SSLv23_client_method () ;
 int __redisSetError (int *,int ,char*) ;
 int initOpensslLocks () ;
 int redisSSLConnect (int *,int *,int *) ;
 int sslLogCallback ;

int redisSecureConnection(redisContext *c, const char *capath,
                          const char *certpath, const char *keypath, const char *servername) {

    SSL_CTX *ssl_ctx = ((void*)0);
    SSL *ssl = ((void*)0);


    static int isInit = 0;
    if (!isInit) {
        isInit = 1;
        SSL_library_init();



    }

    ssl_ctx = SSL_CTX_new(SSLv23_client_method());
    if (!ssl_ctx) {
        __redisSetError(c, REDIS_ERR_OTHER, "Failed to create SSL_CTX");
        goto error;
    }




    SSL_CTX_set_options(ssl_ctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);
    SSL_CTX_set_verify(ssl_ctx, SSL_VERIFY_PEER, ((void*)0));
    if ((certpath != ((void*)0) && keypath == ((void*)0)) || (keypath != ((void*)0) && certpath == ((void*)0))) {
        __redisSetError(c, REDIS_ERR_OTHER, "certpath and keypath must be specified together");
        goto error;
    }

    if (capath) {
        if (!SSL_CTX_load_verify_locations(ssl_ctx, capath, ((void*)0))) {
            __redisSetError(c, REDIS_ERR_OTHER, "Invalid CA certificate");
            goto error;
        }
    }
    if (certpath) {
        if (!SSL_CTX_use_certificate_chain_file(ssl_ctx, certpath)) {
            __redisSetError(c, REDIS_ERR_OTHER, "Invalid client certificate");
            goto error;
        }
        if (!SSL_CTX_use_PrivateKey_file(ssl_ctx, keypath, SSL_FILETYPE_PEM)) {
            __redisSetError(c, REDIS_ERR_OTHER, "Invalid client key");
            goto error;
        }
    }

    ssl = SSL_new(ssl_ctx);
    if (!ssl) {
        __redisSetError(c, REDIS_ERR_OTHER, "Couldn't create new SSL instance");
        goto error;
    }
    if (servername) {
        if (!SSL_set_tlsext_host_name(ssl, servername)) {
            __redisSetError(c, REDIS_ERR_OTHER, "Couldn't set server name indication");
            goto error;
        }
    }

    return redisSSLConnect(c, ssl_ctx, ssl);

error:
    if (ssl) SSL_free(ssl);
    if (ssl_ctx) SSL_CTX_free(ssl_ctx);
    return REDIS_ERR;
}
