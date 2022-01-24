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
struct packed_git {int dummy; } ;
typedef  struct object_id {int /*<<< orphan*/  hash; } const object_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 unsigned char* FUNC1 (struct packed_git*,int /*<<< orphan*/ ) ; 

const struct object_id *FUNC2(struct object_id *oid,
					      struct packed_git *p,
					      uint32_t n)
{
	const unsigned char *hash = FUNC1(p, n);
	if (!hash)
		return NULL;
	FUNC0(oid->hash, hash);
	return oid;
}