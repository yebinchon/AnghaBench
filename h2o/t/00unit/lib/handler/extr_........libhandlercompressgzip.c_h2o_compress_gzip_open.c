
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int do_transform; } ;
struct st_gzip_context_t {TYPE_1__ super; int zs; } ;
typedef int h2o_mem_pool_t ;
typedef TYPE_1__ h2o_compress_context_t ;


 int WINDOW_BITS ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int deflateInit2 (int *,int,int ,int ,int,int ) ;
 int do_compress ;
 struct st_gzip_context_t* gzip_open (int *) ;

h2o_compress_context_t *h2o_compress_gzip_open(h2o_mem_pool_t *pool, int quality)
{
    struct st_gzip_context_t *self = gzip_open(pool);
    self->super.do_transform = do_compress;

    deflateInit2(&self->zs, quality, Z_DEFLATED, WINDOW_BITS, 8, Z_DEFAULT_STRATEGY);

    return &self->super;
}
