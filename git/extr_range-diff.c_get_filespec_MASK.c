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
struct diff_filespec {char* data; int is_stdin; int /*<<< orphan*/ * driver; scalar_t__ should_munmap; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 struct diff_filespec* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_filespec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  section_headers ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static struct diff_filespec *FUNC3(const char *name, const char *p)
{
	struct diff_filespec *spec = FUNC0(name);

	FUNC1(spec, &null_oid, 0, 0100644);
	spec->data = (char *)p;
	spec->size = FUNC2(p);
	spec->should_munmap = 0;
	spec->is_stdin = 1;
	spec->driver = &section_headers;

	return spec;
}