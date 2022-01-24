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
typedef  size_t saint_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 

__attribute__((used)) static void FUNC1(const unsigned char *T, saint_t *C, saint_t n, saint_t k, int cs)
{
	saint_t i;
	for (i = 0; i < k; ++i) C[i] = 0;
	for (i = 0; i < n; ++i) {
		saint_t c = FUNC0(i);
		++C[c > 0? c : 0];
	}
}