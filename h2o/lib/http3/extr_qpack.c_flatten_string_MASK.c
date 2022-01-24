#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int* entries; int size; } ;
typedef  TYPE_1__ h2o_byte_vector_t ;

/* Variables and functions */
 int H2O_HPACK_ENCODE_INT_MAX_LENGTH ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t,unsigned int) ; 
 size_t FUNC1 (int*,void*,size_t) ; 
 int* FUNC2 (int*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int*,...) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,size_t) ; 

__attribute__((used)) static void FUNC5(h2o_byte_vector_t *buf, const char *src, size_t len, unsigned prefix_bits, int dont_compress)
{
    size_t hufflen;

    if (dont_compress || (hufflen = FUNC1(buf->entries + buf->size + 1, (void *)src, len)) == SIZE_MAX) {
        /* uncompressed */
        buf->entries[buf->size] &= ~((2 << prefix_bits) - 1); /* clear huffman mark */
        FUNC0(buf, len, prefix_bits);
        FUNC3(buf->entries + buf->size, src, len);
        buf->size += len;
    } else {
        /* build huffman header and adjust the location (if necessary) */
        uint8_t tmpbuf[H2O_HPACK_ENCODE_INT_MAX_LENGTH], *p = tmpbuf;
        *p = buf->entries[buf->size] & ~((1 << prefix_bits) - 1);
        *p |= (1 << prefix_bits); /* huffman mark */
        p = FUNC2(p, hufflen, prefix_bits);
        if (p - tmpbuf == 1) {
            buf->entries[buf->size] = tmpbuf[0];
        } else {
            FUNC4(buf->entries + buf->size + (p - tmpbuf), buf->entries + buf->size + 1, hufflen);
            FUNC3(buf->entries + buf->size, tmpbuf, p - tmpbuf);
        }
        buf->size += p - tmpbuf + hufflen;
    }
}