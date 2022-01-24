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
struct rsa_mpi_key {int /*<<< orphan*/ * n; int /*<<< orphan*/ * e; int /*<<< orphan*/ * d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct rsa_mpi_key *key)
{
	FUNC0(key->d);
	FUNC0(key->e);
	FUNC0(key->n);
	key->d = NULL;
	key->e = NULL;
	key->n = NULL;
}