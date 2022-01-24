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
struct promisor_remote {int /*<<< orphan*/  partial_clone_filter; } ;
struct list_objects_filter_options {int /*<<< orphan*/  filter_spec; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct list_objects_filter_options*,int /*<<< orphan*/ ,struct strbuf*) ; 
 struct promisor_remote* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(
	struct list_objects_filter_options *filter_options,
	const char *remote)
{
	struct promisor_remote *promisor = FUNC1(remote);
	struct strbuf errbuf = STRBUF_INIT;

	/*
	 * Parse default value, but silently ignore it if it is invalid.
	 */
	if (!promisor)
		return;

	FUNC3(&filter_options->filter_spec,
			   promisor->partial_clone_filter);
	FUNC0(filter_options,
					 promisor->partial_clone_filter,
					 &errbuf);
	FUNC2(&errbuf);
}