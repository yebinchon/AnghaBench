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
struct skcipher_instance {int dummy; } ;
struct adiantum_instance_ctx {int /*<<< orphan*/  hash_spawn; int /*<<< orphan*/  blockcipher_spawn; int /*<<< orphan*/  streamcipher_spawn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct skcipher_instance*) ; 
 struct adiantum_instance_ctx* FUNC4 (struct skcipher_instance*) ; 

__attribute__((used)) static void FUNC5(struct skcipher_instance *inst)
{
	struct adiantum_instance_ctx *ictx = FUNC4(inst);

	FUNC1(&ictx->streamcipher_spawn);
	FUNC2(&ictx->blockcipher_spawn);
	FUNC0(&ictx->hash_spawn);
	FUNC3(inst);
}