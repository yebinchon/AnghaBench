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

/* Variables and functions */
 int NONCE_LEN_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(const char *nonce, int len)
{
	int i = 0;

	if (NONCE_LEN_LIMIT <= len)
		FUNC0("the receiving end asked to sign an invalid nonce <%.*s>",
		    len, nonce);

	for (i = 0; i < len; i++) {
		int ch = nonce[i] & 0xFF;
		if (FUNC1(ch) ||
		    ch == '-' || ch == '.' ||
		    ch == '/' || ch == '+' ||
		    ch == '=' || ch == '_')
			continue;
		FUNC0("the receiving end asked to sign an invalid nonce <%.*s>",
		    len, nonce);
	}
}