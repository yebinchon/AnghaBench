
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptls_t ;


 int PTLS_ALERT_ILLEGAL_PARAMETER ;
 int handle_certificate (int *,int const*,int const*,int*) ;

__attribute__((used)) static int client_do_handle_certificate(ptls_t *tls, const uint8_t *src, const uint8_t *end)
{
    int got_certs, ret;

    if ((ret = handle_certificate(tls, src, end, &got_certs)) != 0)
        return ret;
    if (!got_certs)
        return PTLS_ALERT_ILLEGAL_PARAMETER;

    return 0;
}
