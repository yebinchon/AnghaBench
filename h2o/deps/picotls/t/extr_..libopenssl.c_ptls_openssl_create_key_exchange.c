
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_key_exchange_context_t ;
typedef int ptls_key_exchange_algorithm_t ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_GROUP_get_curve_name (int ) ;
 int EC_KEY_free (int *) ;
 int EC_KEY_get0_group (int *) ;

 int * EVP_PKEY_get1_EC_KEY (int *) ;
 int EVP_PKEY_id (int *) ;
 int EVP_PKEY_up_ref (int *) ;




 int PTLS_ERROR_INCOMPATIBLE_KEY ;
 int evp_keyex_init (int *,int **,int *) ;
 int ptls_openssl_secp256r1 ;
 int ptls_openssl_secp384r1 ;
 int ptls_openssl_secp521r1 ;
 int ptls_openssl_x25519 ;
 int x9_62_init_key (int *,int **,int *) ;

int ptls_openssl_create_key_exchange(ptls_key_exchange_context_t **ctx, EVP_PKEY *pkey)
{
    int ret, id;

    switch (id = EVP_PKEY_id(pkey)) {

    case 132: {

        EC_KEY *eckey = EVP_PKEY_get1_EC_KEY(pkey);


        ptls_key_exchange_algorithm_t *algo;
        switch (EC_GROUP_get_curve_name(EC_KEY_get0_group(eckey))) {
        case 130:
            algo = &ptls_openssl_secp256r1;
            break;
        default:
            EC_KEY_free(eckey);
            return PTLS_ERROR_INCOMPATIBLE_KEY;
        }


        if ((ret = x9_62_init_key(algo, ctx, eckey)) != 0) {
            EC_KEY_free(eckey);
            return ret;
        }

        return 0;
    } break;
    default:
        return PTLS_ERROR_INCOMPATIBLE_KEY;
    }
}
