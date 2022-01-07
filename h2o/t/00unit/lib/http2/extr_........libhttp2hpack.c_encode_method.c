
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;
typedef int h2o_hpack_header_table_t ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_METHOD ;
 int * encode_header_token (int *,int *,int ,TYPE_1__*) ;
 scalar_t__ h2o_memis (int ,int ,int ) ;

__attribute__((used)) static uint8_t *encode_method(h2o_hpack_header_table_t *header_table, uint8_t *dst, h2o_iovec_t value)
{
    if (h2o_memis(value.base, value.len, H2O_STRLIT("GET"))) {
        *dst++ = 0x82;
        return dst;
    }
    if (h2o_memis(value.base, value.len, H2O_STRLIT("POST"))) {
        *dst++ = 0x83;
        return dst;
    }
    return encode_header_token(header_table, dst, H2O_TOKEN_METHOD, &value);
}
