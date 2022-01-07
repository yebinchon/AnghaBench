
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
typedef int h2o_token_t ;
typedef int h2o_qpack_decoder_t ;
struct TYPE_3__ {int len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED ;
 int MAX_HEADER_NAME_LENGTH ;
 int MAX_HEADER_VALUE_LENGTH ;
 int SIZE_MAX ;
 int alloca (int) ;
 int h2o_hpack_decode_huffman (int ,int const*,int,int,char const**) ;
 int h2o_hpack_validate_header_name (void*,int,char const**) ;
 TYPE_1__ h2o_iovec_init (int const*,int) ;
 int * h2o_lookup_token (int ,int ) ;
 char* h2o_qpack_err_header_name_too_long ;
 char* h2o_qpack_err_header_value_too_long ;
 int insert_literal_header (int *,int ,int ,int,int const*,int,char const**) ;
 int insert_token_header (int *,int const*,int,int const*,int,char const**) ;

__attribute__((used)) static int insert_without_name_reference(h2o_qpack_decoder_t *qpack, int qnhuff, const uint8_t *qn, int64_t qnlen, int qvhuff,
                                         const uint8_t *qv, int64_t qvlen, const char **err_desc)
{
    h2o_iovec_t name;

    if (qnlen >= MAX_HEADER_NAME_LENGTH) {
        *err_desc = h2o_qpack_err_header_name_too_long;
        return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
    }
    if (qvlen >= MAX_HEADER_VALUE_LENGTH) {
        *err_desc = h2o_qpack_err_header_value_too_long;
        return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
    }

    if (qnhuff) {
        name.base = alloca(qnlen * 2);
        if ((name.len = h2o_hpack_decode_huffman(name.base, qn, qnlen, 1, err_desc)) == SIZE_MAX)
            return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
    } else {
        if (!h2o_hpack_validate_header_name((void *)qn, qnlen, err_desc))
            return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
        name = h2o_iovec_init(qn, qnlen);
    }

    const h2o_token_t *token;
    if ((token = h2o_lookup_token(name.base, name.len)) != ((void*)0)) {
        return insert_token_header(qpack, token, qvhuff, qv, qvlen, err_desc);
    } else {
        return insert_literal_header(qpack, name.base, name.len, qvhuff, qv, qvlen, err_desc);
    }
}
