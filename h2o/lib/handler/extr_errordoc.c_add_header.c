
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_mem_pool_t ;
struct TYPE_4__ {scalar_t__ size; int * entries; } ;
typedef TYPE_1__ h2o_headers_t ;
typedef int h2o_header_t ;


 int h2o_vector_reserve (int *,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void add_header(h2o_mem_pool_t *pool, h2o_headers_t *headers, const h2o_header_t *header)
{
    h2o_vector_reserve(pool, headers, headers->size + 1);
    headers->entries[headers->size++] = *header;
}
