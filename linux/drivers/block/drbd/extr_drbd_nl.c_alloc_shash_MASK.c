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
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int NO_ERROR ; 
 struct crypto_shash* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct crypto_shash **tfm, char *tfm_name, int err_alg)
{
	if (!tfm_name[0])
		return NO_ERROR;

	*tfm = FUNC1(tfm_name, 0, 0);
	if (FUNC0(*tfm)) {
		*tfm = NULL;
		return err_alg;
	}

	return NO_ERROR;
}