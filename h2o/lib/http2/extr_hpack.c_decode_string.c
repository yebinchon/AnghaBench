
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_4__ {size_t len; char* base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 size_t SIZE_MAX ;
 TYPE_1__* alloc_buf (int *,int) ;
 size_t h2o_hpack_decode_huffman (char*,int const*,int,int,char const**) ;
 int h2o_hpack_decode_int (int const**,int const*,int) ;
 int h2o_hpack_validate_header_name (char*,int,char const**) ;
 int h2o_hpack_validate_header_value (char*,int,char const**) ;
 int memcpy (char*,int const*,int) ;

__attribute__((used)) static h2o_iovec_t *decode_string(h2o_mem_pool_t *pool, const uint8_t **src, const uint8_t *src_end, int is_header_name,
                                  const char **err_desc)
{
    h2o_iovec_t *ret;
    int is_huffman;
    int64_t len;

    if (*src >= src_end)
        return ((void*)0);

    is_huffman = (**src & 0x80) != 0;
    if ((len = h2o_hpack_decode_int(src, src_end, 7)) < 0)
        return ((void*)0);

    if (is_huffman) {
        if (len > src_end - *src)
            return ((void*)0);
        ret = alloc_buf(pool, len * 2);
        if ((ret->len = h2o_hpack_decode_huffman(ret->base, *src, len, is_header_name, err_desc)) == SIZE_MAX)
            return ((void*)0);
        ret->base[ret->len] = '\0';
    } else {
        if (len > src_end - *src)
            return ((void*)0);
        if (is_header_name) {

            if (**src != (uint8_t)':' && !h2o_hpack_validate_header_name((char *)*src, len, err_desc))
                return ((void*)0);
        } else {
            h2o_hpack_validate_header_value((char *)*src, len, err_desc);
        }
        ret = alloc_buf(pool, len);
        memcpy(ret->base, *src, len);
        ret->base[len] = '\0';
    }
    *src += len;

    return ret;
}
