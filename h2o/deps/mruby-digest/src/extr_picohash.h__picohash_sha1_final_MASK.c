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
struct TYPE_4__ {int bufferOffset; int byteCount; int* state; } ;
typedef  TYPE_1__ _picohash_sha1_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int*,int) ; 

inline void FUNC2(_picohash_sha1_ctx_t *s, void *digest)
{
    // Pad with 0x80 followed by 0x00 until the end of the block
    FUNC0(s, 0x80);
    while (s->bufferOffset != 56)
        FUNC0(s, 0x00);

    // Append length in the last 8 bytes
    FUNC0(s, s->byteCount >> 53); // Shifting to multiply by 8
    FUNC0(s, s->byteCount >> 45); // as SHA-1 supports bitstreams as well as
    FUNC0(s, s->byteCount >> 37); // byte.
    FUNC0(s, s->byteCount >> 29);
    FUNC0(s, s->byteCount >> 21);
    FUNC0(s, s->byteCount >> 13);
    FUNC0(s, s->byteCount >> 5);
    FUNC0(s, s->byteCount << 3);

#ifndef SHA_BIG_ENDIAN
    { // Swap byte order back
        int i;
        for (i = 0; i < 5; i++) {
            s->state[i] = (((s->state[i]) << 24) & 0xff000000) | (((s->state[i]) << 8) & 0x00ff0000) |
                          (((s->state[i]) >> 8) & 0x0000ff00) | (((s->state[i]) >> 24) & 0x000000ff);
        }
    }
#endif

    FUNC1(digest, s->state, sizeof(s->state));
}