#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct crypto_instance {TYPE_1__* tmpl; } ;
struct aead_instance {int /*<<< orphan*/  (* free ) (struct aead_instance*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  (* free ) (struct crypto_instance*) ;} ;

/* Variables and functions */
 struct aead_instance* FUNC0 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_instance*) ; 

__attribute__((used)) static void FUNC3(struct crypto_instance *inst)
{
	struct aead_instance *aead = FUNC0(inst);

	if (!aead->free) {
		inst->tmpl->free(inst);
		return;
	}

	aead->free(aead);
}