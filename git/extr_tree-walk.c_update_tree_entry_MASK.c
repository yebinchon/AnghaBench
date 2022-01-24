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
struct tree_desc {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 scalar_t__ FUNC2 (struct tree_desc*,struct strbuf*) ; 

void FUNC3(struct tree_desc *desc)
{
	struct strbuf err = STRBUF_INIT;
	if (FUNC2(desc, &err))
		FUNC0("%s", err.buf);
	FUNC1(&err);
}