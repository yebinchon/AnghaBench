
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int h2o_hpack_encode_string (int *,int ,int ) ;

__attribute__((used)) static uint8_t *encode_literal_header_without_indexing(uint8_t *dst, const h2o_iovec_t *name, const h2o_iovec_t *value)
{

    *dst++ = 0;
    dst += h2o_hpack_encode_string(dst, name->base, name->len);
    dst += h2o_hpack_encode_string(dst, value->base, value->len);
    return dst;
}
