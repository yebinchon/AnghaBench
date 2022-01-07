
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* cb; } ;
typedef TYPE_3__ quicly_sendbuf_vec_t ;
struct TYPE_9__ {size_t size; TYPE_3__* entries; } ;
struct TYPE_11__ {TYPE_2__ vecs; } ;
typedef TYPE_4__ quicly_sendbuf_t ;
struct TYPE_8__ {int (* discard_vec ) (TYPE_3__*) ;} ;


 int free (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

void quicly_sendbuf_dispose(quicly_sendbuf_t *sb)
{
    size_t i;

    for (i = 0; i != sb->vecs.size; ++i) {
        quicly_sendbuf_vec_t *vec = sb->vecs.entries + i;
        if (vec->cb->discard_vec != ((void*)0))
            vec->cb->discard_vec(vec);
    }
    free(sb->vecs.entries);
}
