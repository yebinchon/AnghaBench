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
struct skcipher_instance {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  skcipher_spawn; } ;
struct essiv_instance_ctx {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_instance*) ; 
 struct essiv_instance_ctx* FUNC2 (struct skcipher_instance*) ; 

__attribute__((used)) static void FUNC3(struct skcipher_instance *inst)
{
	struct essiv_instance_ctx *ictx = FUNC2(inst);

	FUNC0(&ictx->u.skcipher_spawn);
	FUNC1(inst);
}