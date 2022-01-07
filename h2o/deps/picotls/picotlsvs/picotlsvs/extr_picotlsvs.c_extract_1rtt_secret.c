
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptls_t ;
struct TYPE_6__ {TYPE_1__* hash; } ;
typedef TYPE_2__ ptls_cipher_suite_t ;
struct TYPE_5__ {size_t digest_size; } ;


 int ptls_export_secret (int *,int *,size_t,char const*,int ,int) ;
 TYPE_2__* ptls_get_cipher (int *) ;
 int ptls_iovec_init (int *,int ) ;

int extract_1rtt_secret(
    ptls_t *tls, const char *label,
    ptls_cipher_suite_t ** cipher,
    uint8_t * secret, size_t secret_max)
{
    int ret = 0;
    *cipher = ptls_get_cipher(tls);

    if (*cipher == ((void*)0))
    {
        ret = -1;
    }
    else if ((*cipher)->hash->digest_size > secret_max)
    {
        ret = -1;
    }
    else
    {
        ret = ptls_export_secret(tls, secret, (*cipher)->hash->digest_size,
            label, ptls_iovec_init(((void*)0), 0), 1);
    }

    return 0;
}
