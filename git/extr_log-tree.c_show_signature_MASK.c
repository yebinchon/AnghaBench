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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct rev_info {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct commit*,struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rev_info *opt, struct commit *commit)
{
	struct strbuf payload = STRBUF_INIT;
	struct strbuf signature = STRBUF_INIT;
	struct strbuf gpg_output = STRBUF_INIT;
	int status;

	if (FUNC0(commit, &payload, &signature) <= 0)
		goto out;

	status = FUNC4(payload.buf, payload.len,
				      signature.buf, signature.len,
				      &gpg_output, NULL);
	if (status && !gpg_output.len)
		FUNC2(&gpg_output, "No signature\n");

	FUNC1(opt, status, gpg_output.buf);

 out:
	FUNC3(&gpg_output);
	FUNC3(&payload);
	FUNC3(&signature);
}