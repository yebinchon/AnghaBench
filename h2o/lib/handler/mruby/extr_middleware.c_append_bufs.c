
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct st_mruby_subreq_t {TYPE_5__* buf; int super; } ;
struct TYPE_8__ {int len; TYPE_1__* callbacks; } ;
typedef TYPE_2__ h2o_sendvec_t ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {char* base; } ;
struct TYPE_7__ {int (* flatten ) (TYPE_2__*,int *,int ,int ) ;} ;


 int assert (int ) ;
 TYPE_4__ h2o_buffer_reserve (TYPE_5__**,int ) ;
 int h2o_fatal (char*) ;
 int h2o_iovec_init (char*,int ) ;
 int stub1 (TYPE_2__*,int *,int ,int ) ;

__attribute__((used)) static void append_bufs(struct st_mruby_subreq_t *subreq, h2o_sendvec_t *inbufs, size_t inbufcnt)
{
    size_t i;
    for (i = 0; i != inbufcnt; ++i) {
        char *dst = h2o_buffer_reserve(&subreq->buf, inbufs[i].len).base;
        assert(dst != ((void*)0) && "no memory or disk space; FIXME bail out gracefully");
        if (!(*inbufs[i].callbacks->flatten)(inbufs + i, &subreq->super, h2o_iovec_init(dst, inbufs[i].len), 0))
            h2o_fatal("FIXME handle error from pull handler");
        subreq->buf->size += inbufs[i].len;
    }
}
