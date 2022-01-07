
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int* entries; int size; } ;
typedef TYPE_1__ h2o_byte_vector_t ;


 int H2O_HPACK_ENCODE_INT_MAX_LENGTH ;
 size_t SIZE_MAX ;
 int flatten_int (TYPE_1__*,size_t,unsigned int) ;
 size_t h2o_hpack_encode_huffman (int*,void*,size_t) ;
 int* h2o_hpack_encode_int (int*,size_t,unsigned int) ;
 int memcpy (int*,...) ;
 int memmove (int*,int*,size_t) ;

__attribute__((used)) static void flatten_string(h2o_byte_vector_t *buf, const char *src, size_t len, unsigned prefix_bits, int dont_compress)
{
    size_t hufflen;

    if (dont_compress || (hufflen = h2o_hpack_encode_huffman(buf->entries + buf->size + 1, (void *)src, len)) == SIZE_MAX) {

        buf->entries[buf->size] &= ~((2 << prefix_bits) - 1);
        flatten_int(buf, len, prefix_bits);
        memcpy(buf->entries + buf->size, src, len);
        buf->size += len;
    } else {

        uint8_t tmpbuf[H2O_HPACK_ENCODE_INT_MAX_LENGTH], *p = tmpbuf;
        *p = buf->entries[buf->size] & ~((1 << prefix_bits) - 1);
        *p |= (1 << prefix_bits);
        p = h2o_hpack_encode_int(p, hufflen, prefix_bits);
        if (p - tmpbuf == 1) {
            buf->entries[buf->size] = tmpbuf[0];
        } else {
            memmove(buf->entries + buf->size + (p - tmpbuf), buf->entries + buf->size + 1, hufflen);
            memcpy(buf->entries + buf->size, tmpbuf, p - tmpbuf);
        }
        buf->size += p - tmpbuf + hufflen;
    }
}
