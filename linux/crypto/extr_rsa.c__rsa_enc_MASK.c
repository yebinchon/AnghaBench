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
struct rsa_mpi_key {int /*<<< orphan*/  n; int /*<<< orphan*/  e; } ;
typedef  int /*<<< orphan*/  MPI ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct rsa_mpi_key *key, MPI c, MPI m)
{
	/* (1) Validate 0 <= m < n */
	if (FUNC1(m, 0) < 0 || FUNC0(m, key->n) >= 0)
		return -EINVAL;

	/* (2) c = m^e mod n */
	return FUNC2(c, m, key->e, key->n);
}