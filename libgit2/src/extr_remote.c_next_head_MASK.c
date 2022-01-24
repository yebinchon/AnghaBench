#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t length; } ;
typedef  TYPE_1__ const git_vector ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_remote_head ;
struct TYPE_10__ {TYPE_1__ const passive_refspecs; TYPE_1__ const active_refspecs; } ;
typedef  TYPE_3__ git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_1__ const*,size_t) ; 

__attribute__((used)) static int FUNC3(const git_remote *remote, git_vector *refs,
		     git_refspec **out_spec, git_remote_head **out_head,
		     size_t *out_i, size_t *out_j, size_t *out_k)
{
	const git_vector *active, *passive;
	git_remote_head *head;
	git_refspec *spec, *passive_spec;
	size_t i, j, k;

	active = &remote->active_refspecs;
	passive = &remote->passive_refspecs;

	i = *out_i;
	j = *out_j;
	k = *out_k;

	for (; i < refs->length; i++) {
		head = FUNC2(refs, i);

		if (!FUNC0(head->name))
			continue;

		for (; j < active->length; j++) {
			spec = FUNC2(active, j);

			if (!FUNC1(spec, head->name))
				continue;

			for (; k < passive->length; k++) {
				passive_spec = FUNC2(passive, k);

				if (!FUNC1(passive_spec, head->name))
				    continue;

				*out_spec = passive_spec;
				*out_head = head;
				*out_i = i;
				*out_j = j;
				*out_k = k + 1;
				return 0;

			}
			k = 0;
		}
		j = 0;
	}

	return GIT_ITEROVER;
}