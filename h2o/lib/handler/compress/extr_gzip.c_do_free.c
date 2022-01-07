
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ do_transform; TYPE_3__* push_buf; } ;
struct TYPE_4__ {size_t size; TYPE_3__* entries; } ;
struct st_gzip_context_t {TYPE_2__ super; TYPE_1__ bufs; int zs; scalar_t__ zs_is_open; } ;
struct TYPE_6__ {struct TYPE_6__* raw; } ;


 int deflateEnd (int *) ;
 scalar_t__ do_compress ;
 int free (TYPE_3__*) ;
 int inflateEnd (int *) ;

__attribute__((used)) static void do_free(void *_self)
{
    struct st_gzip_context_t *self = _self;
    size_t i;

    if (self->zs_is_open) {
        if (self->super.do_transform == do_compress) {
            deflateEnd(&self->zs);
        } else {
            inflateEnd(&self->zs);
        }
    }

    for (i = 0; i != self->bufs.size; ++i)
        free(self->bufs.entries[i].raw);
    free(self->bufs.entries);
    free(self->super.push_buf);
}
