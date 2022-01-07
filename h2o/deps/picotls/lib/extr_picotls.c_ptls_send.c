
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int seq; int * aead; } ;
struct TYPE_6__ {TYPE_5__ enc; } ;
struct TYPE_7__ {int needs_key_update; TYPE_1__ traffic_protection; scalar_t__ key_update_send_request; } ;
typedef TYPE_2__ ptls_t ;
typedef int ptls_buffer_t ;


 int PTLS_CONTENT_TYPE_APPDATA ;
 int assert (int ) ;
 int buffer_push_encrypted_records (int *,int ,void const*,size_t,TYPE_5__*) ;
 int update_send_key (TYPE_2__*,int *,scalar_t__) ;

int ptls_send(ptls_t *tls, ptls_buffer_t *sendbuf, const void *input, size_t inlen)
{
    assert(tls->traffic_protection.enc.aead != ((void*)0));




    if (tls->traffic_protection.enc.seq >= 16777216)
        tls->needs_key_update = 1;

    if (tls->needs_key_update) {
        int ret;
        if ((ret = update_send_key(tls, sendbuf, tls->key_update_send_request)) != 0)
            return ret;
        tls->needs_key_update = 0;
        tls->key_update_send_request = 0;
    }

    return buffer_push_encrypted_records(sendbuf, PTLS_CONTENT_TYPE_APPDATA, input, inlen, &tls->traffic_protection.enc);
}
