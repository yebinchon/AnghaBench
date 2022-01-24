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
struct strbuf {int len; } ;
struct rev_info {char* patch_suffix; int nr; scalar_t__ reroll_count; } ;

/* Variables and functions */
 int FORMAT_PATCH_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int) ; 
 int FUNC3 (char const*) ; 

void FUNC4(struct strbuf *filename,
			const char *subject,
			struct rev_info *info)
{
	const char *suffix = info->patch_suffix;
	int nr = info->nr;
	int start_len = filename->len;
	int max_len = start_len + FORMAT_PATCH_NAME_MAX - (FUNC3(suffix) + 1);

	if (0 < info->reroll_count)
		FUNC0(filename, "v%d-", info->reroll_count);
	FUNC0(filename, "%04d-%s", nr, subject);

	if (max_len < filename->len)
		FUNC2(filename, max_len);
	FUNC1(filename, suffix);
}