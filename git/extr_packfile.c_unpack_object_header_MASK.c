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
struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
typedef  unsigned long off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BAD ; 
 unsigned long FUNC0 (unsigned char*,unsigned long,int*,unsigned long*) ; 
 unsigned char* FUNC1 (struct packed_git*,struct pack_window**,unsigned long,unsigned long*) ; 

int FUNC2(struct packed_git *p,
			 struct pack_window **w_curs,
			 off_t *curpos,
			 unsigned long *sizep)
{
	unsigned char *base;
	unsigned long left;
	unsigned long used;
	enum object_type type;

	/* use_pack() assures us we have [base, base + 20) available
	 * as a range that we can look at.  (Its actually the hash
	 * size that is assured.)  With our object header encoding
	 * the maximum deflated object size is 2^137, which is just
	 * insane, so we know won't exceed what we have been given.
	 */
	base = FUNC1(p, w_curs, *curpos, &left);
	used = FUNC0(base, left, &type, sizep);
	if (!used) {
		type = OBJ_BAD;
	} else
		*curpos += used;

	return type;
}