
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptls_t ;
typedef int ptls_handshake_properties_t ;
typedef int ptls_buffer_t ;


 int ptls_buffer_init (int *,char*,int ) ;
 int ptls_handshake (int *,int *,int *,int *,int *) ;

int handshake_init(ptls_t * tls, ptls_buffer_t * sendbuf, ptls_handshake_properties_t * ph_prop)
{
    size_t inlen = 0, roff = 0;

    ptls_buffer_init(sendbuf, "", 0);
    int ret = ptls_handshake(tls, sendbuf, ((void*)0), ((void*)0), ph_prop);

    return ret;
}
