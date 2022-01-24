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
 unsigned int ARGON2_MAX_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int crypto_pwhash_argon2i_MEMLIMIT_MAX ; 

size_t
FUNC1(void)
{
    FUNC0((crypto_pwhash_argon2i_MEMLIMIT_MAX / 1024U) <= ARGON2_MAX_MEMORY);
    return crypto_pwhash_argon2i_MEMLIMIT_MAX;
}