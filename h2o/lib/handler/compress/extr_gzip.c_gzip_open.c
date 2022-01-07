
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * opaque; int zfree; int zalloc; } ;
struct TYPE_4__ {int * push_buf; int * do_transform; int name; } ;
struct st_gzip_context_t {int zs_is_open; int bufs; TYPE_1__ zs; TYPE_2__ super; } ;
typedef int h2o_mem_pool_t ;


 int H2O_STRLIT (char*) ;
 int alloc_cb ;
 int do_free ;
 int expand_buf (struct st_gzip_context_t*) ;
 int free_cb ;
 int h2o_iovec_init (int ) ;
 struct st_gzip_context_t* h2o_mem_alloc_shared (int *,int,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static struct st_gzip_context_t *gzip_open(h2o_mem_pool_t *pool)
{
    struct st_gzip_context_t *self = h2o_mem_alloc_shared(pool, sizeof(*self), do_free);

    self->super.name = h2o_iovec_init(H2O_STRLIT("gzip"));
    self->super.do_transform = ((void*)0);
    self->super.push_buf = ((void*)0);
    self->zs.zalloc = alloc_cb;
    self->zs.zfree = free_cb;
    self->zs.opaque = ((void*)0);
    self->zs_is_open = 1;
    memset(&self->bufs, 0, sizeof(self->bufs));
    expand_buf(self);

    return self;
}
