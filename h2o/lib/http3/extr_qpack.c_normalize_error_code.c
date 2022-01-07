
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H2O_HTTP2_ERROR_INVALID_HEADER_CHAR ;
 int H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED ;

__attribute__((used)) static int normalize_error_code(int err)
{

    if (err < 0 && err != H2O_HTTP2_ERROR_INVALID_HEADER_CHAR)
        err = H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;
    return err;
}
