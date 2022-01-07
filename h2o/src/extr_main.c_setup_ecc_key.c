
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int NID_X9_62_prime256v1 ;
 char* OBJ_nid2sn (int) ;
 int SSL_CTX_set_ecdh_auto (int *,int) ;
 int SSL_CTX_set_tmp_ecdh (int *,int *) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void setup_ecc_key(SSL_CTX *ssl_ctx)
{



    int nid = NID_X9_62_prime256v1;
    EC_KEY *key = EC_KEY_new_by_curve_name(nid);
    if (key == ((void*)0)) {
        fprintf(stderr, "Failed to create curve \"%s\"\n", OBJ_nid2sn(nid));
        return;
    }
    SSL_CTX_set_tmp_ecdh(ssl_ctx, key);
    EC_KEY_free(key);

}
