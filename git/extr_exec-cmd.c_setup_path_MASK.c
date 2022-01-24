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
 char const* _PATH_DEFPATH ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

void FUNC7(void)
{
	const char *exec_path = FUNC2();
	const char *old_path = FUNC1("PATH");
	struct strbuf new_path = STRBUF_INIT;

	FUNC3(exec_path);
	FUNC0(&new_path, exec_path);

	if (old_path)
		FUNC5(&new_path, old_path);
	else
		FUNC5(&new_path, _PATH_DEFPATH);

	FUNC4("PATH", new_path.buf, 1);

	FUNC6(&new_path);
}