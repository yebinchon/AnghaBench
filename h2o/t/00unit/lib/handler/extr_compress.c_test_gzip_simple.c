
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_sendvec_t ;
typedef int h2o_mem_pool_t ;
typedef int h2o_compress_context_t ;


 int H2O_STRLIT (char*) ;
 int Z_BEST_SPEED ;
 int check_result (int *,size_t,int ) ;
 int * h2o_compress_gzip_open (int *,int ) ;
 int h2o_compress_transform (int *,int *,int *,int,int,int **,size_t*) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int h2o_sendvec_init_raw (int *,int ) ;

void test_gzip_simple(void)
{
    h2o_mem_pool_t pool;
    h2o_sendvec_t inbuf, *outbufs;
    size_t outbufcnt;

    h2o_mem_init_pool(&pool);

    h2o_compress_context_t *compressor = h2o_compress_gzip_open(&pool, Z_BEST_SPEED);
    h2o_sendvec_init_raw(&inbuf, H2O_STRLIT("hello world"));
    h2o_compress_transform(compressor, ((void*)0), &inbuf, 1, 1, &outbufs, &outbufcnt);

    check_result(outbufs, outbufcnt, H2O_STRLIT("hello world"));

    h2o_mem_clear_pool(&pool);
}
