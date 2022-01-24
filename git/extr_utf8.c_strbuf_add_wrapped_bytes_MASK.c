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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int,int,int) ; 
 char* FUNC2 (char const*,int) ; 

void FUNC3(struct strbuf *buf, const char *data, int len,
			     int indent, int indent2, int width)
{
	char *tmp = FUNC2(data, len);
	FUNC1(buf, tmp, indent, indent2, width);
	FUNC0(tmp);
}