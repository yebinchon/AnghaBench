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
typedef  int /*<<< orphan*/  u8 ;
struct parsed_resp {int num; } ;
struct opal_resp_tok {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTAERROR_NO_METHOD_STATUS ; 
 int /*<<< orphan*/  OPAL_ENDLIST ; 
 int /*<<< orphan*/  OPAL_ENDOFSESSION ; 
 int /*<<< orphan*/  OPAL_STARTLIST ; 
 struct opal_resp_tok* FUNC0 (struct parsed_resp const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct parsed_resp const*,int) ; 
 scalar_t__ FUNC2 (struct opal_resp_tok const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(const struct parsed_resp *resp)
{
	const struct opal_resp_tok *tok;

	tok = FUNC0(resp, 0);
	if (FUNC2(tok, OPAL_ENDOFSESSION))
		return 0;

	if (resp->num < 5)
		return DTAERROR_NO_METHOD_STATUS;

	tok = FUNC0(resp, resp->num - 5);
	if (!FUNC2(tok, OPAL_STARTLIST))
		return DTAERROR_NO_METHOD_STATUS;

	tok = FUNC0(resp, resp->num - 1);
	if (!FUNC2(tok, OPAL_ENDLIST))
		return DTAERROR_NO_METHOD_STATUS;

	return FUNC1(resp, resp->num - 4);
}