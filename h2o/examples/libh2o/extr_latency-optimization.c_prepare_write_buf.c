
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int * h2o_mem_alloc (int ) ;
 int memset (int *,int ,int ) ;
 int write_block_size ;

__attribute__((used)) static h2o_iovec_t prepare_write_buf(void)
{
    static h2o_iovec_t buf;
    if (buf.base == ((void*)0)) {
        buf.base = h2o_mem_alloc(write_block_size);
        buf.len = write_block_size;
        memset(buf.base, '0', buf.len);
    }
    return buf;
}
