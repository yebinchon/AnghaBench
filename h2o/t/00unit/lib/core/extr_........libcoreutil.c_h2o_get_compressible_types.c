
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h2o_iovec_t ;
struct TYPE_7__ {size_t size; TYPE_3__* entries; } ;
typedef TYPE_2__ h2o_headers_t ;
struct TYPE_6__ {int len; int base; } ;
struct TYPE_8__ {TYPE_1__ value; int * name; } ;
typedef TYPE_3__ h2o_header_t ;
struct TYPE_9__ {int buf; } ;


 int H2O_COMPRESSIBLE_BROTLI ;
 int H2O_COMPRESSIBLE_GZIP ;
 int H2O_STRLIT (char*) ;
 TYPE_5__* H2O_TOKEN_ACCEPT_ENCODING ;
 scalar_t__ H2O_UNLIKELY (int) ;
 int h2o_iovec_init (int ,int ) ;
 scalar_t__ h2o_lcstris (char const*,size_t,int ) ;
 char* h2o_next_token (int *,char,size_t*,int *) ;

int h2o_get_compressible_types(const h2o_headers_t *headers)
{
    size_t header_index;
    int compressible_types = 0;

    for (header_index = 0; header_index != headers->size; ++header_index) {
        const h2o_header_t *header = headers->entries + header_index;
        if (H2O_UNLIKELY(header->name == &H2O_TOKEN_ACCEPT_ENCODING->buf)) {
            h2o_iovec_t iter = h2o_iovec_init(header->value.base, header->value.len);
            const char *token = ((void*)0);
            size_t token_len = 0;
            while ((token = h2o_next_token(&iter, ',', &token_len, ((void*)0))) != ((void*)0)) {
                if (h2o_lcstris(token, token_len, H2O_STRLIT("gzip")))
                    compressible_types |= H2O_COMPRESSIBLE_GZIP;
                else if (h2o_lcstris(token, token_len, H2O_STRLIT("br")))
                    compressible_types |= H2O_COMPRESSIBLE_BROTLI;
            }
        }
    }

    return compressible_types;
}
