
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_neverbleed_rsa_exdata_t {size_t key_index; TYPE_1__* nb; } ;
struct TYPE_3__ {int engine; } ;
typedef TYPE_1__ neverbleed_t ;
typedef int RSA ;
typedef int EVP_PKEY ;
typedef int BIGNUM ;


 scalar_t__ BN_hex2bn (int **,char const*) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_RSA (int *,int *) ;
 int RSA_FLAG_EXT_PKEY ;
 int RSA_free (int *) ;
 int * RSA_new_method (int ) ;
 int RSA_set0_key (int *,int *,int *,int *) ;
 int RSA_set_ex_data (int *,int ,struct st_neverbleed_rsa_exdata_t*) ;
 int RSA_set_flags (int *,int ) ;
 int abort () ;
 int fprintf (int ,char*,...) ;
 struct st_neverbleed_rsa_exdata_t* malloc (int) ;
 int stderr ;

__attribute__((used)) static EVP_PKEY *create_pkey(neverbleed_t *nb, size_t key_index, const char *ebuf, const char *nbuf)
{
    struct st_neverbleed_rsa_exdata_t *exdata;
    RSA *rsa;
    EVP_PKEY *pkey;
    BIGNUM *e = ((void*)0), *n = ((void*)0);

    if ((exdata = malloc(sizeof(*exdata))) == ((void*)0)) {
        fprintf(stderr, "no memory\n");
        abort();
    }
    exdata->nb = nb;
    exdata->key_index = key_index;

    rsa = RSA_new_method(nb->engine);
    RSA_set_ex_data(rsa, 0, exdata);
    if (BN_hex2bn(&e, ebuf) == 0) {
        fprintf(stderr, "failed to parse e:%s\n", ebuf);
        abort();
    }
    if (BN_hex2bn(&n, nbuf) == 0) {
        fprintf(stderr, "failed to parse n:%s\n", nbuf);
        abort();
    }
    RSA_set0_key(rsa, n, e, ((void*)0));
    RSA_set_flags(rsa, RSA_FLAG_EXT_PKEY);

    pkey = EVP_PKEY_new();
    EVP_PKEY_set1_RSA(pkey, rsa);
    RSA_free(rsa);

    return pkey;
}
