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
 int /*<<< orphan*/  PATH_SEP ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct strbuf *out, const char *path)
{
	if (path && *path) {
		FUNC0(out, path);
		FUNC1(out, PATH_SEP);
	}
}