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
typedef  int /*<<< orphan*/  git_packbuilder ;

/* Variables and functions */
 int /*<<< orphan*/  PREPARE_PACK ; 
 int FUNC0 (int /*<<< orphan*/ *,int (*) (void*,size_t,void*),void*) ; 

int FUNC1(git_packbuilder *pb, int (*cb)(void *buf, size_t size, void *payload), void *payload)
{
	PREPARE_PACK;
	return FUNC0(pb, cb, payload);
}