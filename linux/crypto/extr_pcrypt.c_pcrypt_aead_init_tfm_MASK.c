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
struct pcrypt_request {int dummy; } ;
struct pcrypt_instance_ctx {int /*<<< orphan*/  spawn; int /*<<< orphan*/  tfm_count; } ;
struct pcrypt_aead_ctx {struct crypto_aead* child; int /*<<< orphan*/  cb_cpu; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct aead_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*) ; 
 struct aead_instance* FUNC2 (struct crypto_aead*) ; 
 struct pcrypt_instance_ctx* FUNC3 (struct aead_instance*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 struct pcrypt_aead_ctx* FUNC8 (struct crypto_aead*) ; 
 scalar_t__ FUNC9 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC10 (struct crypto_aead*,scalar_t__) ; 
 struct crypto_aead* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct crypto_aead *tfm)
{
	int cpu, cpu_index;
	struct aead_instance *inst = FUNC2(tfm);
	struct pcrypt_instance_ctx *ictx = FUNC3(inst);
	struct pcrypt_aead_ctx *ctx = FUNC8(tfm);
	struct crypto_aead *cipher;

	cpu_index = (unsigned int)FUNC4(&ictx->tfm_count) %
		    FUNC7(cpu_online_mask);

	ctx->cb_cpu = FUNC5(cpu_online_mask);
	for (cpu = 0; cpu < cpu_index; cpu++)
		ctx->cb_cpu = FUNC6(ctx->cb_cpu, cpu_online_mask);

	cipher = FUNC11(&ictx->spawn);

	if (FUNC0(cipher))
		return FUNC1(cipher);

	ctx->child = cipher;
	FUNC10(tfm, sizeof(struct pcrypt_request) +
				     sizeof(struct aead_request) +
				     FUNC9(cipher));

	return 0;
}