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
struct crypto_scomp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SW842_MEM_COMPRESS ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(struct crypto_scomp *tfm)
{
	void *ctx;

	ctx = FUNC1(SW842_MEM_COMPRESS, GFP_KERNEL);
	if (!ctx)
		return FUNC0(-ENOMEM);

	return ctx;
}