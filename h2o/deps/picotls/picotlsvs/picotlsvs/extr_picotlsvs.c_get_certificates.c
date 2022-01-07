
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int len; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int X509 ;


 int fprintf (int ,char*,char*) ;
 int i2d_X509 (int *,int *) ;
 int * openPemFile (char*) ;
 int stderr ;

int get_certificates(char * pem_fname, ptls_iovec_t ** list, int * nb_certs)
{
    int ret = 0;
    size_t count = 0;
    X509 *cert;
    static ptls_iovec_t certs[16];

    *nb_certs = 0;
    *list = ((void*)0);

    cert = openPemFile(pem_fname);

    if (cert == ((void*)0))
    {
        fprintf(stderr, "Could not read cert in %s\n", pem_fname);
        ret = -1;
    }
    else
    {
        ptls_iovec_t *dst = certs + count++;
        dst->len = i2d_X509(cert, &dst->base);
    }

    *nb_certs = (int) count;
    *list = certs;

    return ret;
}
