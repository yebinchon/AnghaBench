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
typedef  int /*<<< orphan*/  SHA256_CTX ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 char const* FUNC4 (unsigned char*,int) ; 

__attribute__((used)) static const char *FUNC5(FILE *f)
{
	SHA256_CTX ctx;
	unsigned char val[SHA256_DIGEST_LENGTH];
	void *buf;
	int len;

	FUNC1(&ctx);
	while ((buf = FUNC3(f, &len)) != NULL)
		FUNC2(&ctx, buf, len);
	FUNC0(val, &ctx);

	return FUNC4(val, SHA256_DIGEST_LENGTH);
}