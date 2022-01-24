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
struct rsa_mpi_key {int dummy; } ;
struct crypto_akcipher {int dummy; } ;

/* Variables and functions */
 struct rsa_mpi_key* FUNC0 (struct crypto_akcipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsa_mpi_key*) ; 

__attribute__((used)) static void FUNC2(struct crypto_akcipher *tfm)
{
	struct rsa_mpi_key *pkey = FUNC0(tfm);

	FUNC1(pkey);
}