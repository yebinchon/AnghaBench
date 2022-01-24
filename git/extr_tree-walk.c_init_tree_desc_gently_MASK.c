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
 int FUNC1 (struct tree_desc*,void const*,unsigned long,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

int FUNC3(struct tree_desc *desc, const void *buffer, unsigned long size)
{
	struct strbuf err = STRBUF_INIT;
	int result = FUNC1(desc, buffer, size, &err);
	if (result)
		FUNC0("%s", err.buf);
	FUNC2(&err);
	return result;
}