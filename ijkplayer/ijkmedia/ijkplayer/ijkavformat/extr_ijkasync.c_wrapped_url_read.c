
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_4__ {int inner_io_error; int inner; } ;
typedef TYPE_2__ Context ;


 int ffurl_read (int ,void*,int) ;

__attribute__((used)) static int wrapped_url_read(void *src, void *dst, int size)
{
    URLContext *h = src;
    Context *c = h->priv_data;
    int ret;

    ret = ffurl_read(c->inner, dst, size);
    c->inner_io_error = ret < 0 ? ret : 0;

    return ret;
}
