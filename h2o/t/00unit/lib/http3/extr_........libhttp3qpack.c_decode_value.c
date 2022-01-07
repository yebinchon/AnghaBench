
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t SIZE_MAX ;
 size_t h2o_hpack_decode_huffman (char*,int const*,size_t,int ,char const**) ;
 int h2o_hpack_validate_header_value (void*,size_t,char const**) ;
 int memcpy (char*,int const*,size_t) ;

__attribute__((used)) static size_t decode_value(int is_huff, const uint8_t *src, size_t srclen, char *outbuf, const char **err_desc)
{
    size_t outlen;

    if (is_huff) {
        if ((outlen = h2o_hpack_decode_huffman(outbuf, src, srclen, 0, err_desc)) == SIZE_MAX)
            return SIZE_MAX;
    } else {
        h2o_hpack_validate_header_value((void *)src, srclen, err_desc);
        memcpy(outbuf, src, srclen);
        outlen = srclen;
    }
    outbuf[outlen] = '\0';

    return outlen;
}
