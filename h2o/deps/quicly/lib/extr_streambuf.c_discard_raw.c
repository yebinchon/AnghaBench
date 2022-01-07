
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbdata; } ;
typedef TYPE_1__ quicly_sendbuf_vec_t ;


 int free (int ) ;

__attribute__((used)) static void discard_raw(quicly_sendbuf_vec_t *vec)
{
    free(vec->cbdata);
}
