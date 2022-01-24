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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct replay_opts {int /*<<< orphan*/  strategy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct replay_opts*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct replay_opts *opts, struct strbuf *buf)
{
	FUNC5(buf);
	if (!FUNC1(buf, FUNC2(), 0))
		return;
	opts->strategy = FUNC4(buf, NULL);
	if (!FUNC1(buf, FUNC3(), 0))
		return;

	FUNC0(opts, buf->buf);
}