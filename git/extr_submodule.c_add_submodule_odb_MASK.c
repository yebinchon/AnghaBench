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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct strbuf*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

int FUNC4(const char *path)
{
	struct strbuf objects_directory = STRBUF_INIT;
	int ret = 0;

	ret = FUNC2(&objects_directory, path, "objects/");
	if (ret)
		goto done;
	if (!FUNC1(objects_directory.buf)) {
		ret = -1;
		goto done;
	}
	FUNC0(objects_directory.buf);
done:
	FUNC3(&objects_directory);
	return ret;
}