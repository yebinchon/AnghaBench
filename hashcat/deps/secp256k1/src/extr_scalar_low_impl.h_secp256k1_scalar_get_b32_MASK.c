#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int secp256k1_scalar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(unsigned char *bin, const secp256k1_scalar* a) {
    FUNC0(bin, 0, 32);
    bin[28] = *a >> 24; bin[29] = *a >> 16; bin[30] = *a >> 8; bin[31] = *a;
}