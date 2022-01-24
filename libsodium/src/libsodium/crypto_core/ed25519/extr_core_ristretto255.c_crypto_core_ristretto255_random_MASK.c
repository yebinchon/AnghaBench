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

/* Variables and functions */
 int crypto_core_ristretto255_HASHBYTES ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 

void
FUNC2(unsigned char *p)
{
    unsigned char h[crypto_core_ristretto255_HASHBYTES];

    FUNC1(h, sizeof h);
    (void) FUNC0(p, h);
}