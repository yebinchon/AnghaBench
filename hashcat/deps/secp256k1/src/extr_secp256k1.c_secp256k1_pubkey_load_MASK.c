#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ secp256k1_pubkey ;
typedef  int /*<<< orphan*/  secp256k1_ge_storage ;
struct TYPE_8__ {int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;
typedef  int /*<<< orphan*/  secp256k1_context ;
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const secp256k1_context* ctx, secp256k1_ge* ge, const secp256k1_pubkey* pubkey) {
    if (sizeof(secp256k1_ge_storage) == 64) {
        /* When the secp256k1_ge_storage type is exactly 64 byte, use its
         * representation inside secp256k1_pubkey, as conversion is very fast.
         * Note that secp256k1_pubkey_save must use the same representation. */
        secp256k1_ge_storage s;
        FUNC1(&s, &pubkey->data[0], sizeof(s));
        FUNC4(ge, &s);
    } else {
        /* Otherwise, fall back to 32-byte big endian for X and Y. */
        secp256k1_fe x, y;
        FUNC3(&x, pubkey->data);
        FUNC3(&y, pubkey->data + 32);
        FUNC5(ge, &x, &y);
    }
    FUNC0(!FUNC2(&ge->x));
    return 1;
}