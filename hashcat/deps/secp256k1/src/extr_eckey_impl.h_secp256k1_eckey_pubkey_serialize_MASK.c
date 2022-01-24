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
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ secp256k1_ge ;

/* Variables and functions */
 unsigned char SECP256K1_TAG_PUBKEY_EVEN ; 
 unsigned char SECP256K1_TAG_PUBKEY_ODD ; 
 unsigned char SECP256K1_TAG_PUBKEY_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(secp256k1_ge *elem, unsigned char *pub, size_t *size, int compressed) {
    if (FUNC3(elem)) {
        return 0;
    }
    FUNC2(&elem->x);
    FUNC2(&elem->y);
    FUNC0(&pub[1], &elem->x);
    if (compressed) {
        *size = 33;
        pub[0] = FUNC1(&elem->y) ? SECP256K1_TAG_PUBKEY_ODD : SECP256K1_TAG_PUBKEY_EVEN;
    } else {
        *size = 65;
        pub[0] = SECP256K1_TAG_PUBKEY_UNCOMPRESSED;
        FUNC0(&pub[33], &elem->y);
    }
    return 1;
}