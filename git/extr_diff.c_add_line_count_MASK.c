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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*) ; 

__attribute__((used)) static void FUNC2(struct strbuf *out, int count)
{
	switch (count) {
	case 0:
		FUNC1(out, "0,0");
		break;
	case 1:
		FUNC1(out, "1");
		break;
	default:
		FUNC0(out, "1,%d", count);
		break;
	}
}