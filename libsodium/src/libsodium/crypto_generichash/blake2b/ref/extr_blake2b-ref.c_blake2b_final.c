
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int buflen; int* buf; int* h; } ;
typedef TYPE_1__ blake2b_state ;


 int BLAKE2B_BLOCKBYTES ;
 int BLAKE2B_OUTBYTES ;
 int COMPILER_ASSERT (int) ;
 int STORE64_LE (unsigned char*,int) ;
 int assert (int) ;
 int blake2b_compress (TYPE_1__*,int*) ;
 int blake2b_increment_counter (TYPE_1__*,int) ;
 scalar_t__ blake2b_is_lastblock (TYPE_1__*) ;
 int blake2b_set_lastblock (TYPE_1__*) ;
 int memcpy (int*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int sodium_memzero (int*,int) ;
 int sodium_misuse () ;

int
blake2b_final(blake2b_state *S, uint8_t *out, uint8_t outlen)
{
    unsigned char buffer[BLAKE2B_OUTBYTES];

    if (!outlen || outlen > BLAKE2B_OUTBYTES) {
        sodium_misuse();
    }
    if (blake2b_is_lastblock(S)) {
        return -1;
    }
    if (S->buflen > BLAKE2B_BLOCKBYTES) {
        blake2b_increment_counter(S, BLAKE2B_BLOCKBYTES);
        blake2b_compress(S, S->buf);
        S->buflen -= BLAKE2B_BLOCKBYTES;
        assert(S->buflen <= BLAKE2B_BLOCKBYTES);
        memcpy(S->buf, S->buf + BLAKE2B_BLOCKBYTES, S->buflen);
    }

    blake2b_increment_counter(S, S->buflen);
    blake2b_set_lastblock(S);
    memset(S->buf + S->buflen, 0,
           2 * BLAKE2B_BLOCKBYTES - S->buflen);
    blake2b_compress(S, S->buf);

    COMPILER_ASSERT(sizeof buffer == 64U);
    STORE64_LE(buffer + 8 * 0, S->h[0]);
    STORE64_LE(buffer + 8 * 1, S->h[1]);
    STORE64_LE(buffer + 8 * 2, S->h[2]);
    STORE64_LE(buffer + 8 * 3, S->h[3]);
    STORE64_LE(buffer + 8 * 4, S->h[4]);
    STORE64_LE(buffer + 8 * 5, S->h[5]);
    STORE64_LE(buffer + 8 * 6, S->h[6]);
    STORE64_LE(buffer + 8 * 7, S->h[7]);
    memcpy(out, buffer, outlen);

    sodium_memzero(S->h, sizeof S->h);
    sodium_memzero(S->buf, sizeof S->buf);

    return 0;
}
