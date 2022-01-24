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
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(secp256k1_pubkey* pubkey, secp256k1_ge* ge) {
    if (sizeof(secp256k1_ge_storage) == 64) {
        secp256k1_ge_storage s;
        FUNC5(&s, ge);
        FUNC1(&pubkey->data[0], &s, sizeof(s));
    } else {
        FUNC0(!FUNC4(ge));
        FUNC3(&ge->x);
        FUNC3(&ge->y);
        FUNC2(pubkey->data, &ge->x);
        FUNC2(pubkey->data + 32, &ge->y);
    }
}