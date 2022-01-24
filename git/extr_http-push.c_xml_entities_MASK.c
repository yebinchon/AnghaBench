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
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 char* FUNC1 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC2(const char *s)
{
	struct strbuf buf = STRBUF_INIT;
	FUNC0(&buf, s);
	return FUNC1(&buf, NULL);
}