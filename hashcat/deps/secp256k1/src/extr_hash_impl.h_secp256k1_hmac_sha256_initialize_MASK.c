#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_sha256 ;
struct TYPE_3__ {int /*<<< orphan*/  inner; int /*<<< orphan*/  outer; } ;
typedef  TYPE_1__ secp256k1_hmac_sha256 ;
typedef  int /*<<< orphan*/  rkey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static void FUNC5(secp256k1_hmac_sha256 *hash, const unsigned char *key, size_t keylen) {
    size_t n;
    unsigned char rkey[64];
    if (keylen <= sizeof(rkey)) {
        FUNC0(rkey, key, keylen);
        FUNC1(rkey + keylen, 0, sizeof(rkey) - keylen);
    } else {
        secp256k1_sha256 sha256;
        FUNC3(&sha256);
        FUNC4(&sha256, key, keylen);
        FUNC2(&sha256, rkey);
        FUNC1(rkey + 32, 0, 32);
    }

    FUNC3(&hash->outer);
    for (n = 0; n < sizeof(rkey); n++) {
        rkey[n] ^= 0x5c;
    }
    FUNC4(&hash->outer, rkey, sizeof(rkey));

    FUNC3(&hash->inner);
    for (n = 0; n < sizeof(rkey); n++) {
        rkey[n] ^= 0x5c ^ 0x36;
    }
    FUNC4(&hash->inner, rkey, sizeof(rkey));
    FUNC1(rkey, 0, sizeof(rkey));
}