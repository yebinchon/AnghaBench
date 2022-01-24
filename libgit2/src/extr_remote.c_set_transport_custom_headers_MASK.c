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
struct TYPE_4__ {int (* set_custom_headers ) (TYPE_1__*,int /*<<< orphan*/  const*) ;} ;
typedef  TYPE_1__ git_transport ;
typedef  int /*<<< orphan*/  git_strarray ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(git_transport *t, const git_strarray *custom_headers)
{
	if (!t->set_custom_headers)
		return 0;

	return t->set_custom_headers(t, custom_headers);
}