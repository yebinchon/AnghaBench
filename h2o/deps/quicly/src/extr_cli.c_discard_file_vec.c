
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cbdata; } ;
typedef TYPE_1__ quicly_sendbuf_vec_t ;


 int close (int) ;

__attribute__((used)) static void discard_file_vec(quicly_sendbuf_vec_t *vec)
{
    int fd = (int)vec->cbdata;
    close(fd);
}
