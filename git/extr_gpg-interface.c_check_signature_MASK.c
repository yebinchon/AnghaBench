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
struct strbuf {int /*<<< orphan*/  len; } ;
struct signature_check {char result; void* gpg_status; void* gpg_output; int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct signature_check*) ; 
 void* FUNC1 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int FUNC3 (char const*,size_t,char const*,size_t,struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t) ; 

int FUNC5(const char *payload, size_t plen, const char *signature,
	size_t slen, struct signature_check *sigc)
{
	struct strbuf gpg_output = STRBUF_INIT;
	struct strbuf gpg_status = STRBUF_INIT;
	int status;

	sigc->result = 'N';

	status = FUNC3(payload, plen, signature, slen,
				      &gpg_output, &gpg_status);
	if (status && !gpg_output.len)
		goto out;
	sigc->payload = FUNC4(payload, plen);
	sigc->gpg_output = FUNC1(&gpg_output, NULL);
	sigc->gpg_status = FUNC1(&gpg_status, NULL);
	FUNC0(sigc);
	status |= sigc->result != 'G' && sigc->result != 'U';

 out:
	FUNC2(&gpg_status);
	FUNC2(&gpg_output);

	return !!status;
}