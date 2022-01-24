#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct merge_options {int verbosity; TYPE_1__* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  call_depth; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct merge_options *opt, int v)
{
	return (!opt->priv->call_depth && opt->verbosity >= v) ||
		opt->verbosity >= 5;
}