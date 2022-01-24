#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct split_index {void* replace_bitmap; void* delete_bitmap; TYPE_1__ base_oid; } ;
struct index_state {int dummy; } ;
struct TYPE_4__ {unsigned long rawsz; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 void* FUNC1 () ; 
 int FUNC2 (void*,unsigned char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*) ; 
 struct split_index* FUNC4 (struct index_state*) ; 
 TYPE_2__* the_hash_algo ; 

int FUNC5(struct index_state *istate,
			 const void *data_, unsigned long sz)
{
	const unsigned char *data = data_;
	struct split_index *si;
	int ret;

	if (sz < the_hash_algo->rawsz)
		return FUNC0("corrupt link extension (too short)");
	si = FUNC4(istate);
	FUNC3(si->base_oid.hash, data);
	data += the_hash_algo->rawsz;
	sz -= the_hash_algo->rawsz;
	if (!sz)
		return 0;
	si->delete_bitmap = FUNC1();
	ret = FUNC2(si->delete_bitmap, data, sz);
	if (ret < 0)
		return FUNC0("corrupt delete bitmap in link extension");
	data += ret;
	sz -= ret;
	si->replace_bitmap = FUNC1();
	ret = FUNC2(si->replace_bitmap, data, sz);
	if (ret < 0)
		return FUNC0("corrupt replace bitmap in link extension");
	if (ret != sz)
		return FUNC0("garbage at the end of link extension");
	return 0;
}