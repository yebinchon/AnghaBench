#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  infinity; int /*<<< orphan*/  const y; int /*<<< orphan*/  const x; } ;
typedef  TYPE_1__ secp256k1_gej ;
struct TYPE_6__ {int /*<<< orphan*/  infinity; int /*<<< orphan*/  const y; int /*<<< orphan*/  const x; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  const secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(secp256k1_ge *r, const secp256k1_gej *a, const secp256k1_fe *zi) {
    secp256k1_fe zi2;
    secp256k1_fe zi3;
    FUNC1(&zi2, zi);
    FUNC0(&zi3, &zi2, zi);
    FUNC0(&r->x, &a->x, &zi2);
    FUNC0(&r->y, &a->y, &zi3);
    r->infinity = a->infinity;
}