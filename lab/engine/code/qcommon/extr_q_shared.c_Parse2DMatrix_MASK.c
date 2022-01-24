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
 int /*<<< orphan*/  FUNC0 (char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,int,float*) ; 

void FUNC2 (char **buf_p, int y, int x, float *m) {
	int		i;

	FUNC0( buf_p, "(" );

	for (i = 0 ; i < y ; i++) {
		FUNC1 (buf_p, x, m + i * x);
	}

	FUNC0( buf_p, ")" );
}