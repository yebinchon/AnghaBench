
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_BIT ;
 scalar_t__ SIZE_MAX ;
 int sodium_misuse () ;

int
sodium_pad(size_t *padded_buflen_p, unsigned char *buf,
           size_t unpadded_buflen, size_t blocksize, size_t max_buflen)
{
    unsigned char *tail;
    size_t i;
    size_t xpadlen;
    size_t xpadded_len;
    volatile unsigned char mask;
    unsigned char barrier_mask;

    if (blocksize <= 0U) {
        return -1;
    }
    xpadlen = blocksize - 1U;
    if ((blocksize & (blocksize - 1U)) == 0U) {
        xpadlen -= unpadded_buflen & (blocksize - 1U);
    } else {
        xpadlen -= unpadded_buflen % blocksize;
    }
    if ((size_t) SIZE_MAX - unpadded_buflen <= xpadlen) {
        sodium_misuse();
    }
    xpadded_len = unpadded_buflen + xpadlen;
    if (xpadded_len >= max_buflen) {
        return -1;
    }
    tail = &buf[xpadded_len];
    if (padded_buflen_p != ((void*)0)) {
        *padded_buflen_p = xpadded_len + 1U;
    }
    mask = 0U;
    for (i = 0; i < blocksize; i++) {
        barrier_mask = (unsigned char) (((i ^ xpadlen) - 1U)
           >> ((sizeof(size_t) - 1) * CHAR_BIT));
        *(tail - i) = ((*(tail - i)) & mask) | (0x80 & barrier_mask);
        mask |= barrier_mask;
    }
    return 0;
}
