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
typedef  int /*<<< orphan*/  uint8_t ;
struct packed_git {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_SHA1_RAWSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*,size_t,struct packed_git*) ; 

int FUNC1(const uint8_t *data, size_t size)
{
	struct packed_git p;

	FUNC0("fuzz-input", GIT_SHA1_RAWSZ, (void *)data, size, &p);

	return 0;
}