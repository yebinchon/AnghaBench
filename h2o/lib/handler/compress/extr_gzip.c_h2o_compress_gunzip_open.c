
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * push_buf; int do_transform; int name; } ;
struct st_gzip_context_t {TYPE_1__ super; int zs; } ;
typedef int h2o_mem_pool_t ;
typedef TYPE_1__ h2o_compress_context_t ;


 int H2O_STRLIT (char*) ;
 int WINDOW_BITS ;
 int do_decompress ;
 struct st_gzip_context_t* gzip_open (int *) ;
 int h2o_iovec_init (int ) ;
 int inflateInit2 (int *,int ) ;

h2o_compress_context_t *h2o_compress_gunzip_open(h2o_mem_pool_t *pool)
{
    struct st_gzip_context_t *self = gzip_open(pool);
    self->super.name = h2o_iovec_init(H2O_STRLIT("gunzip"));
    self->super.do_transform = do_decompress;
    self->super.push_buf = ((void*)0);
    inflateInit2(&self->zs, WINDOW_BITS);

    return &self->super;
}
