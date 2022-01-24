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
struct test_sglist {unsigned int nents; struct scatterlist* sgl_ptr; } ;
struct scatterlist {unsigned int length; unsigned int offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  TESTMGR_POISON_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,char const*,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct test_sglist *tsgl,
				 const char *expected_output,
				 unsigned int len_to_check,
				 unsigned int unchecked_prefix_len,
				 bool check_poison)
{
	unsigned int i;

	for (i = 0; i < tsgl->nents; i++) {
		struct scatterlist *sg = &tsgl->sgl_ptr[i];
		unsigned int len = sg->length;
		unsigned int offset = sg->offset;
		const char *actual_output;

		if (unchecked_prefix_len) {
			if (unchecked_prefix_len >= len) {
				unchecked_prefix_len -= len;
				continue;
			}
			offset += unchecked_prefix_len;
			len -= unchecked_prefix_len;
			unchecked_prefix_len = 0;
		}
		len = FUNC2(len, len_to_check);
		actual_output = FUNC3(FUNC4(sg)) + offset;
		if (FUNC1(expected_output, actual_output, len) != 0)
			return -EINVAL;
		if (check_poison &&
		    !FUNC5(actual_output + len, TESTMGR_POISON_LEN))
			return -EOVERFLOW;
		len_to_check -= len;
		expected_output += len;
	}
	if (FUNC0(len_to_check != 0))
		return -EINVAL;
	return 0;
}