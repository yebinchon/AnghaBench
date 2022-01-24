#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  format_options; int /*<<< orphan*/  describe_options; scalar_t__ commit_count; int /*<<< orphan*/ * commits; } ;
typedef  TYPE_1__ describe_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DESCRIBE_FORMAT_OPTIONS_VERSION ; 
 int /*<<< orphan*/  GIT_DESCRIBE_OPTIONS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(describe_options *opts)
{
	FUNC2(opts, 0, sizeof(*opts));

	opts->commits = NULL;
	opts->commit_count = 0;
	FUNC1(&opts->describe_options, GIT_DESCRIBE_OPTIONS_VERSION);
	FUNC0(&opts->format_options, GIT_DESCRIBE_FORMAT_OPTIONS_VERSION);
}