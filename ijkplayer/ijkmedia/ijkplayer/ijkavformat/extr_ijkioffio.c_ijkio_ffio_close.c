
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int inner; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ IjkURLContext ;
typedef TYPE_2__ IjkIOFFioContext ;


 int ffurl_close (int ) ;

__attribute__((used)) static int ijkio_ffio_close(IjkURLContext *h) {
    if (!h)
        return -1;

    IjkIOFFioContext *c= h->priv_data;

    if (!c || !c->inner)
        return -1;

    return ffurl_close(c->inner);
}
