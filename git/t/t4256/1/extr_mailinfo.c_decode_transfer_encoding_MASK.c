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
struct strbuf {int dummy; } ;
struct mailinfo {int transfer_encoding; } ;

/* Variables and functions */
#define  TE_BASE64 130 
#define  TE_DONTCARE 129 
#define  TE_QP 128 
 struct strbuf* FUNC0 (struct strbuf*) ; 
 struct strbuf* FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct mailinfo *mi, struct strbuf *line)
{
	struct strbuf *ret;

	switch (mi->transfer_encoding) {
	case TE_QP:
		ret = FUNC1(line, 0);
		break;
	case TE_BASE64:
		ret = FUNC0(line);
		break;
	case TE_DONTCARE:
	default:
		return;
	}
	FUNC5(line);
	FUNC3(line, ret);
	FUNC4(ret);
	FUNC2(ret);
}