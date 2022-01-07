
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 int X509_FILETYPE_DEFAULT ;
 int X509_LOOKUP_add_dir (int *,int *,int ) ;
 int X509_LOOKUP_file () ;
 int X509_LOOKUP_hash_dir () ;
 int X509_LOOKUP_load_file (int *,int *,int ) ;
 int * X509_STORE_add_lookup (int *,int ) ;
 int X509_STORE_free (int *) ;
 int * X509_STORE_new () ;

X509_STORE *ptls_openssl_create_default_certificate_store(void)
{
    X509_STORE *store;
    X509_LOOKUP *lookup;

    if ((store = X509_STORE_new()) == ((void*)0))
        goto Error;
    if ((lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file())) == ((void*)0))
        goto Error;
    X509_LOOKUP_load_file(lookup, ((void*)0), X509_FILETYPE_DEFAULT);
    if ((lookup = X509_STORE_add_lookup(store, X509_LOOKUP_hash_dir())) == ((void*)0))
        goto Error;
    X509_LOOKUP_add_dir(lookup, ((void*)0), X509_FILETYPE_DEFAULT);

    return store;
Error:
    if (store != ((void*)0))
        X509_STORE_free(store);
    return ((void*)0);
}
