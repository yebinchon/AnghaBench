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
struct parsed_resp {int num; struct opal_resp_tok* toks; } ;
struct opal_resp_tok {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct opal_resp_tok const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static const struct opal_resp_tok *FUNC2(
				const struct parsed_resp *resp,
				int n)
{
	const struct opal_resp_tok *tok;

	if (!resp) {
		FUNC1("Response is NULL\n");
		return FUNC0(-EINVAL);
	}

	if (n >= resp->num) {
		FUNC1("Token number doesn't exist: %d, resp: %d\n",
			 n, resp->num);
		return FUNC0(-EINVAL);
	}

	tok = &resp->toks[n];
	if (tok->len == 0) {
		FUNC1("Token length must be non-zero\n");
		return FUNC0(-EINVAL);
	}

	return tok;
}