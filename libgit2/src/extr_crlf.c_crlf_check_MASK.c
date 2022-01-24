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
struct crlf_attrs {scalar_t__ crlf_action; } ;
typedef  int /*<<< orphan*/  git_filter_source ;
typedef  int /*<<< orphan*/  git_filter ;
typedef  int /*<<< orphan*/  ca ;

/* Variables and functions */
 scalar_t__ GIT_CRLF_BINARY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct crlf_attrs*,char const**,int /*<<< orphan*/  const*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct crlf_attrs*,int) ; 

__attribute__((used)) static int FUNC5(
	git_filter *self,
	void **payload, /* points to NULL ptr on entry, may be set */
	const git_filter_source *src,
	const char **attr_values)
{
	struct crlf_attrs ca;

	FUNC1(self);

	FUNC2(&ca, attr_values, src);

	if (ca.crlf_action == GIT_CRLF_BINARY)
		return GIT_PASSTHROUGH;

	*payload = FUNC3(sizeof(ca));
	FUNC0(*payload);
	FUNC4(*payload, &ca, sizeof(ca));

	return 0;
}