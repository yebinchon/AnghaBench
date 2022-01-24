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
struct pkcs7_parse_context {scalar_t__ last_oid; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 scalar_t__ OID__NR ; 
 scalar_t__ FUNC0 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (void const*,size_t,char*,int) ; 

int FUNC3(void *context, size_t hdrlen,
		   unsigned char tag,
		   const void *value, size_t vlen)
{
	struct pkcs7_parse_context *ctx = context;

	ctx->last_oid = FUNC0(value, vlen);
	if (ctx->last_oid == OID__NR) {
		char buffer[50];
		FUNC2(value, vlen, buffer, sizeof(buffer));
		FUNC1("PKCS7: Unknown OID: [%lu] %s\n",
		       (unsigned long)value - ctx->data, buffer);
	}
	return 0;
}