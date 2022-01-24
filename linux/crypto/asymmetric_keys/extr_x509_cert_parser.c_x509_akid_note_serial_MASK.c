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
struct x509_parse_context {TYPE_2__* cert; int /*<<< orphan*/  akid_raw_issuer_size; int /*<<< orphan*/  akid_raw_issuer; } ;
struct asymmetric_key_id {int len; void const* data; } ;
struct TYPE_4__ {TYPE_1__* sig; } ;
struct TYPE_3__ {struct asymmetric_key_id** auth_ids; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct asymmetric_key_id*) ; 
 int FUNC1 (struct asymmetric_key_id*) ; 
 struct asymmetric_key_id* FUNC2 (void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,void const*) ; 

int FUNC4(void *context, size_t hdrlen,
			  unsigned char tag,
			  const void *value, size_t vlen)
{
	struct x509_parse_context *ctx = context;
	struct asymmetric_key_id *kid;

	FUNC3("AKID: serial: %*phN\n", (int)vlen, value);

	if (!ctx->akid_raw_issuer || ctx->cert->sig->auth_ids[0])
		return 0;

	kid = FUNC2(value,
					 vlen,
					 ctx->akid_raw_issuer,
					 ctx->akid_raw_issuer_size);
	if (FUNC0(kid))
		return FUNC1(kid);

	FUNC3("authkeyid %*phN\n", kid->len, kid->data);
	ctx->cert->sig->auth_ids[0] = kid;
	return 0;
}