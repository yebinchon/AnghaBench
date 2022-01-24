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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int bytes; int* s; } ;
typedef  TYPE_1__ secp256k1_sha256 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC3(secp256k1_sha256 *hash, unsigned char *out32) {
    static const unsigned char pad[64] = {0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    uint32_t sizedesc[2];
    uint32_t out[8];
    int i = 0;
    sizedesc[0] = FUNC0(hash->bytes >> 29);
    sizedesc[1] = FUNC0(hash->bytes << 3);
    FUNC2(hash, pad, 1 + ((119 - (hash->bytes % 64)) % 64));
    FUNC2(hash, (const unsigned char*)sizedesc, 8);
    for (i = 0; i < 8; i++) {
        out[i] = FUNC0(hash->s[i]);
        hash->s[i] = 0;
    }
    FUNC1(out32, (const unsigned char*)out, 32);
}