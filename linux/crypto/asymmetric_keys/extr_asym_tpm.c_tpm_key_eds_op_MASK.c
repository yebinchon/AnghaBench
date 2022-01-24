#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tpm_key {int dummy; } ;
struct kernel_pkey_params {int op; TYPE_2__* key; } ;
struct TYPE_3__ {struct tpm_key** data; } ;
struct TYPE_4__ {TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EOPNOTSUPP ; 
 size_t asym_crypto ; 
#define  kernel_pkey_decrypt 130 
#define  kernel_pkey_encrypt 129 
#define  kernel_pkey_sign 128 
 int FUNC1 (struct tpm_key*,struct kernel_pkey_params*,void const*,void*) ; 
 int FUNC2 (struct tpm_key*,struct kernel_pkey_params*,void const*,void*) ; 
 int FUNC3 (struct tpm_key*,struct kernel_pkey_params*,void const*,void*) ; 

__attribute__((used)) static int FUNC4(struct kernel_pkey_params *params,
			  const void *in, void *out)
{
	struct tpm_key *tk = params->key->payload.data[asym_crypto];
	int ret = -EOPNOTSUPP;

	/* Perform the encryption calculation. */
	switch (params->op) {
	case kernel_pkey_encrypt:
		ret = FUNC2(tk, params, in, out);
		break;
	case kernel_pkey_decrypt:
		ret = FUNC1(tk, params, in, out);
		break;
	case kernel_pkey_sign:
		ret = FUNC3(tk, params, in, out);
		break;
	default:
		FUNC0();
	}

	return ret;
}