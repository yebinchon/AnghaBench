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
struct packed_git {struct packed_git* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct packed_git*) ; 
 char* FUNC1 (unsigned char*,char const*) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (unsigned char*) ; 
 struct packed_git* FUNC5 (unsigned char*,char*) ; 
 char* FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct packed_git*) ; 

__attribute__((used)) static int FUNC9(struct packed_git **packs_head,
	unsigned char *sha1, const char *base_url)
{
	struct packed_git *new_pack;
	char *tmp_idx = NULL;
	int ret;

	if (FUNC4(sha1)) {
		new_pack = FUNC5(sha1, FUNC6(sha1));
		if (!new_pack)
			return -1; /* parse_pack_index() already issued error message */
		goto add_pack;
	}

	tmp_idx = FUNC1(sha1, base_url);
	if (!tmp_idx)
		return -1;

	new_pack = FUNC5(sha1, tmp_idx);
	if (!new_pack) {
		FUNC7(tmp_idx);
		FUNC3(tmp_idx);

		return -1; /* parse_pack_index() already issued error message */
	}

	ret = FUNC8(new_pack);
	if (!ret) {
		FUNC0(new_pack);
		ret = FUNC2(tmp_idx, FUNC6(sha1));
	}
	FUNC3(tmp_idx);
	if (ret)
		return -1;

add_pack:
	new_pack->next = *packs_head;
	*packs_head = new_pack;
	return 0;
}