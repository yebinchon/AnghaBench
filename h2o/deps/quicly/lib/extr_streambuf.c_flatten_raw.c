
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ cbdata; } ;
typedef TYPE_1__ quicly_sendbuf_vec_t ;


 int memcpy (void*,int *,size_t) ;

__attribute__((used)) static int flatten_raw(quicly_sendbuf_vec_t *vec, void *dst, size_t off, size_t len)
{
    memcpy(dst, (uint8_t *)vec->cbdata + off, len);
    return 0;
}
