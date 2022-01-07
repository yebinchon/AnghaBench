
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_4__* receiving; } ;
struct st_fcgi_generator_t {size_t leftsize; TYPE_1__ resp; } ;
struct TYPE_6__ {int * base; } ;
typedef TYPE_2__ h2o_iovec_t ;
struct TYPE_7__ {size_t size; } ;


 size_t SIZE_MAX ;
 TYPE_2__ h2o_buffer_try_reserve (TYPE_4__**,size_t) ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static int append_content(struct st_fcgi_generator_t *generator, const void *src, size_t len)
{

    if (generator->leftsize != SIZE_MAX) {
        if (generator->leftsize < len) {
            len = generator->leftsize;
            if (len == 0)
                return 0;
        }
        generator->leftsize -= len;
    }
    h2o_iovec_t reserved = h2o_buffer_try_reserve(&generator->resp.receiving, len);
    if (reserved.base == ((void*)0)) {
        return -1;
    }
    memcpy(reserved.base, src, len);
    generator->resp.receiving->size += len;
    return 0;
}
