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
struct crypto_akcipher_spawn {int dummy; } ;
struct pkcs1pad_inst_ctx {struct crypto_akcipher_spawn spawn; } ;
struct akcipher_instance {int dummy; } ;

/* Variables and functions */
 struct pkcs1pad_inst_ctx* FUNC0 (struct akcipher_instance*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_akcipher_spawn*) ; 
 int /*<<< orphan*/  FUNC2 (struct akcipher_instance*) ; 

__attribute__((used)) static void FUNC3(struct akcipher_instance *inst)
{
	struct pkcs1pad_inst_ctx *ctx = FUNC0(inst);
	struct crypto_akcipher_spawn *spawn = &ctx->spawn;

	FUNC1(spawn);
	FUNC2(inst);
}