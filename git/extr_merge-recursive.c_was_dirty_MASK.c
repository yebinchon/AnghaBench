#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct merge_options {TYPE_1__* priv; } ;
struct cache_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  src_index; } ;
struct TYPE_3__ {TYPE_2__ unpack_opts; scalar_t__ call_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  ignore_case ; 
 struct cache_entry* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (struct cache_entry*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct merge_options*,char const*) ; 

__attribute__((used)) static int FUNC4(struct merge_options *opt, const char *path)
{
	struct cache_entry *ce;
	int dirty = 1;

	if (opt->priv->call_depth || !FUNC3(opt, path))
		return !dirty;

	ce = FUNC0(opt->priv->unpack_opts.src_index,
			       path, FUNC1(path), ignore_case);
	dirty = FUNC2(ce, &opt->priv->unpack_opts) != 0;
	return dirty;
}