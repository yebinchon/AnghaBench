#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int m; int n; double* a0; double** a; double** e; double** ae; } ;
typedef  TYPE_1__ hmm_par_t ;
typedef  double FLOAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int,int) ; 

hmm_par_t *FUNC3(int m, int n)
{
	hmm_par_t *hp;
	int i;
	FUNC0(m > 0 && n > 0);
	hp = (hmm_par_t*)FUNC1(1, sizeof(hmm_par_t));
	hp->m = m; hp->n = n;
	hp->a0 = (FLOAT*)FUNC1(n, sizeof(FLOAT));
	hp->a = (FLOAT**)FUNC2(n, n, sizeof(FLOAT));
	hp->e = (FLOAT**)FUNC2(m + 1, n, sizeof(FLOAT));
	hp->ae = (FLOAT**)FUNC2((m + 1) * n, n, sizeof(FLOAT));
	for (i = 0; i != n; ++i) hp->e[m][i] = 1.0;
	return hp;
}