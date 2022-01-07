
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int super; } ;
typedef TYPE_1__ ptls_openssl_sign_certificate_t ;
struct TYPE_6__ {int * sign_certificate; } ;
typedef TYPE_2__ ptls_context_t ;
typedef int FILE ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int * PEM_read_PrivateKey (int *,int *,int *,int *) ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*,...) ;
 int ptls_openssl_init_sign_certificate (TYPE_1__*,int *) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static inline void load_private_key(ptls_context_t *ctx, const char *fn)
{
    static ptls_openssl_sign_certificate_t sc;
    FILE *fp;
    EVP_PKEY *pkey;

    if ((fp = fopen(fn, "rb")) == ((void*)0)) {
        fprintf(stderr, "failed to open file:%s:%s\n", fn, strerror(errno));
        exit(1);
    }
    pkey = PEM_read_PrivateKey(fp, ((void*)0), ((void*)0), ((void*)0));
    fclose(fp);

    if (pkey == ((void*)0)) {
        fprintf(stderr, "failed to read private key from file:%s\n", fn);
        exit(1);
    }

    ptls_openssl_init_sign_certificate(&sc, pkey);
    EVP_PKEY_free(pkey);

    ctx->sign_certificate = &sc.super;
}
