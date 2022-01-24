#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dir_len; int found; int /*<<< orphan*/ * res_oid; int /*<<< orphan*/ * short_oid; scalar_t__ short_oid_len; } ;
typedef  TYPE_1__ loose_locate_object_state ;
struct TYPE_6__ {int ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int GIT_EAMBIGUOUS ; 
 int GIT_OID_HEXSZ ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4(void *state, git_buf *pathbuf) {
	loose_locate_object_state *sstate = (loose_locate_object_state *)state;

	if (FUNC0(pathbuf) - sstate->dir_len != GIT_OID_HEXSZ - 2) {
		/* Entry cannot be an object. Continue to next entry */
		return 0;
	}

	if (FUNC1(pathbuf->ptr) == false) {
		/* We are already in the directory matching the 2 first hex characters,
		 * compare the first ncmp characters of the oids */
		if (!FUNC2(sstate->short_oid + 2,
			(unsigned char *)pathbuf->ptr + sstate->dir_len,
			sstate->short_oid_len - 2)) {

			if (!sstate->found) {
				sstate->res_oid[0] = sstate->short_oid[0];
				sstate->res_oid[1] = sstate->short_oid[1];
				FUNC3(sstate->res_oid+2, pathbuf->ptr+sstate->dir_len, GIT_OID_HEXSZ-2);
			}
			sstate->found++;
		}
	}

	if (sstate->found > 1)
		return GIT_EAMBIGUOUS;

	return 0;
}