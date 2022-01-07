
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int read_file_inner_error; int fd; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ IjkURLContext ;
typedef TYPE_2__ IjkIOCacheContext ;


 scalar_t__ read (int ,void*,int) ;

__attribute__((used)) static int wrapped_file_read(IjkURLContext *h, void *dst, int size)
{
    IjkIOCacheContext *c = h->priv_data;
    int ret;

    ret = (int)read(c->fd, dst, size);
    c->read_file_inner_error = ret < 0 ? ret : 0;
    return ret;
}
