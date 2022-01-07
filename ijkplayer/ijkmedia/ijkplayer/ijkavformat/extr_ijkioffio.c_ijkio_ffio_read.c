
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


 int ffurl_read (int ,unsigned char*,int) ;

__attribute__((used)) static int ijkio_ffio_read(IjkURLContext *h, unsigned char *buf, int size) {
    if (!h)
        return -1;

    IjkIOFFioContext *c= h->priv_data;
    if (!c || !c->inner)
        return -1;

    return ffurl_read(c->inner, buf, size);
}
