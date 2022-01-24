#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ url; } ;
typedef  TYPE_1__ git_proxy_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GIT_PROXY_OPTIONS_VERSION ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*,int) ; 

int FUNC4(git_proxy_options *tgt, const git_proxy_options *src)
{
	if (!src) {
		FUNC2(tgt, GIT_PROXY_OPTIONS_VERSION);
		return 0;
	}

	FUNC3(tgt, src, sizeof(git_proxy_options));
	if (src->url) {
		tgt->url = FUNC1(src->url);
		FUNC0(tgt->url);
	}

	return 0;
}