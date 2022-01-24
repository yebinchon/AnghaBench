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
struct tempfile {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct tempfile* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

struct tempfile *FUNC4(const char *filename_template, int mode)
{
	struct tempfile *tempfile;
	struct strbuf full_template = STRBUF_INIT;

	FUNC2(&full_template, filename_template);
	tempfile = FUNC1(full_template.buf, mode);
	if (!tempfile)
		FUNC0("Unable to create temporary file '%s'",
			  full_template.buf);

	FUNC3(&full_template);
	return tempfile;
}