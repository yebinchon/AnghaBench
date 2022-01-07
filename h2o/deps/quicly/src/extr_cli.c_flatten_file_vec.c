
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ cbdata; } ;
typedef TYPE_1__ quicly_sendbuf_vec_t ;


 scalar_t__ EINTR ;
 int QUICLY_TRANSPORT_ERROR_INTERNAL ;
 scalar_t__ errno ;
 int pread (int,void*,size_t,size_t) ;

__attribute__((used)) static int flatten_file_vec(quicly_sendbuf_vec_t *vec, void *dst, size_t off, size_t len)
{
    int fd = (int)vec->cbdata;
    ssize_t rret;


    while ((rret = pread(fd, dst, len, off)) == -1 && errno == EINTR)
        ;

    return rret == len ? 0 : QUICLY_TRANSPORT_ERROR_INTERNAL;
}
