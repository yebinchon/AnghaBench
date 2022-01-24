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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  key_ref_t ;

/* Variables and functions */
 int EKEYREJECTED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  blacklist_keyring ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_type_blacklist ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char*,char const*,size_t) ; 
 size_t FUNC8 (char const*) ; 

int FUNC9(const u8 *hash, size_t hash_len, const char *type)
{
	key_ref_t kref;
	size_t type_len = FUNC8(type);
	char *buffer, *p;
	int ret = 0;

	buffer = FUNC5(type_len + 1 + hash_len * 2 + 1, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;
	p = FUNC7(buffer, type, type_len);
	p += type_len;
	*p++ = ':';
	FUNC1(p, hash, hash_len);
	p += hash_len * 2;
	*p = 0;

	kref = FUNC3(FUNC6(blacklist_keyring, true),
			      &key_type_blacklist, buffer, false);
	if (!FUNC0(kref)) {
		FUNC2(kref);
		ret = -EKEYREJECTED;
	}

	FUNC4(buffer);
	return ret;
}