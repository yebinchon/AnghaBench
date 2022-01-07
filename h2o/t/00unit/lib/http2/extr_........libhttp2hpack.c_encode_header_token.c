
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int dont_compress; } ;
struct TYPE_5__ {TYPE_1__ flags; int buf; } ;
typedef TYPE_2__ h2o_token_t ;
typedef int h2o_iovec_t ;
typedef int h2o_hpack_header_table_t ;


 int * do_encode_header (int *,int *,int *,int const*,int ) ;

__attribute__((used)) static uint8_t *encode_header_token(h2o_hpack_header_table_t *header_table, uint8_t *dst, const h2o_token_t *token,
                                    const h2o_iovec_t *value)
{
    return do_encode_header(header_table, dst, &token->buf, value, token->flags.dont_compress);
}
