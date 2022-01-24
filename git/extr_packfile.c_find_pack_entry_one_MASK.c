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
typedef  int /*<<< orphan*/  uint32_t ;
struct packed_git {unsigned char* index_data; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct object_id*,struct packed_git*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_git*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct packed_git*) ; 

off_t FUNC4(const unsigned char *sha1,
				  struct packed_git *p)
{
	const unsigned char *index = p->index_data;
	struct object_id oid;
	uint32_t result;

	if (!index) {
		if (FUNC3(p))
			return 0;
	}

	FUNC1(oid.hash, sha1);
	if (FUNC0(&oid, p, &result))
		return FUNC2(p, result);
	return 0;
}