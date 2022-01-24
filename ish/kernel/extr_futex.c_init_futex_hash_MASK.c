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
 int FUTEX_HASH_SIZE ; 
 int /*<<< orphan*/ * futex_hash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void __attribute__((constructor)) FUNC1() {
    for (int i = 0; i < FUTEX_HASH_SIZE; i++)
        FUNC0(&futex_hash[i]);
}