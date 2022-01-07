
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 int X509_FILETYPE_PEM ;
 int X509_LOOKUP_file () ;
 int X509_LOOKUP_load_file (int *,char const*,int ) ;
 int * X509_STORE_add_lookup (int *,int ) ;
 int * X509_STORE_new () ;
 int fprintf (int ,char*,char const*,int) ;
 int stderr ;

X509_STORE * openssl_init_cert_store(char const * crt_file)
{
    int ret = 0;
    X509_STORE *store = X509_STORE_new();

    if (store != ((void*)0)) {
        X509_LOOKUP *lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file());
        ret = X509_LOOKUP_load_file(lookup, crt_file, X509_FILETYPE_PEM);
        if (ret != 1) {
            fprintf(stderr, "Cannot load store (%s), ret = %d\n",
                crt_file, ret);
        }
    }

    return store;
}
