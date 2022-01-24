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
typedef  int /*<<< orphan*/  each_ref_fn ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC5(each_ref_fn fn, void *cb_data)
{
	struct strbuf buf = STRBUF_INIT;
	int ret;
	FUNC3(&buf, "%srefs/", FUNC1());
	ret = FUNC0(FUNC2(the_repository),
			      buf.buf, fn, 0, 0, cb_data);
	FUNC4(&buf);
	return ret;
}