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
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_config *cfg, *base;
	const char* str1;
	const char* str2;
	const char* str3;
	const char* str4;
	const char* str5;

	FUNC1(FUNC4(&cfg, "config17"));
	FUNC1(FUNC5(cfg, "core.startwithspace", " Something"));
	FUNC1(FUNC5(cfg, "core.endwithspace", "Something "));
	FUNC1(FUNC5(cfg, "core.containscommentchar1", "some#thing"));
	FUNC1(FUNC5(cfg, "core.containscommentchar2", "some;thing"));
	FUNC1(FUNC5(cfg, "core.startwhithsapceandcontainsdoublequote", " some\"thing"));
	FUNC2(cfg);

	FUNC1(FUNC4(&base, "config17"));
	FUNC1(FUNC6(&cfg, base));
	FUNC1(FUNC3(&str1, cfg, "core.startwithspace"));
	FUNC0(" Something", str1);
	FUNC1(FUNC3(&str2, cfg, "core.endwithspace"));
	FUNC0("Something ", str2);
	FUNC1(FUNC3(&str3, cfg, "core.containscommentchar1"));
	FUNC0("some#thing", str3);
	FUNC1(FUNC3(&str4, cfg, "core.containscommentchar2"));
	FUNC0("some;thing", str4);
	FUNC1(FUNC3(&str5, cfg, "core.startwhithsapceandcontainsdoublequote"));
	FUNC0(" some\"thing", str5);
	FUNC2(cfg);
	FUNC2(base);
}