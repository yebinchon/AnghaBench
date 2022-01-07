
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ h2o_url_scheme_t ;
typedef int h2o_hpack_header_table_t ;


 int H2O_TOKEN_SCHEME ;
 TYPE_1__ const H2O_URL_SCHEME_HTTP ;
 TYPE_1__ const H2O_URL_SCHEME_HTTPS ;
 int * encode_header_token (int *,int *,int ,int *) ;

__attribute__((used)) static uint8_t *encode_scheme(h2o_hpack_header_table_t *header_table, uint8_t *dst, const h2o_url_scheme_t *scheme)
{
    if (scheme == &H2O_URL_SCHEME_HTTPS) {
        *dst++ = 0x87;
        return dst;
    }
    if (scheme == &H2O_URL_SCHEME_HTTP) {
        *dst++ = 0x86;
        return dst;
    }
    return encode_header_token(header_table, dst, H2O_TOKEN_SCHEME, &scheme->name);
}
