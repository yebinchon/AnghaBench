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
struct key_restriction {int dummy; } ;
typedef  struct key_restriction key ;
typedef  scalar_t__ key_serial_t ;
typedef  int /*<<< orphan*/  key_restrict_link_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct key_restriction* FUNC0 (struct key_restriction*) ; 
 struct key_restriction* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct key_restriction*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct key_restriction* FUNC3 (int /*<<< orphan*/ ,struct key_restriction*) ; 
 struct key_restriction* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct key_restriction*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  restrict_link_by_builtin_and_secondary_trusted ; 
 int /*<<< orphan*/  restrict_link_by_builtin_trusted ; 
 int /*<<< orphan*/  restrict_link_by_key_or_keyring ; 
 int /*<<< orphan*/  restrict_link_by_key_or_keyring_chain ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 char* FUNC10 (char**,char*) ; 

__attribute__((used)) static struct key_restriction *FUNC11(
	const char *restriction)
{
	char *restrict_method;
	char *parse_buf;
	char *next;
	struct key_restriction *ret = FUNC1(-EINVAL);

	if (FUNC9("builtin_trusted", restriction) == 0)
		return FUNC3(
			restrict_link_by_builtin_trusted, NULL);

	if (FUNC9("builtin_and_secondary_trusted", restriction) == 0)
		return FUNC3(
			restrict_link_by_builtin_and_secondary_trusted, NULL);

	parse_buf = FUNC7(restriction, PAGE_SIZE, GFP_KERNEL);
	if (!parse_buf)
		return FUNC1(-ENOMEM);

	next = parse_buf;
	restrict_method = FUNC10(&next, ":");

	if ((FUNC9(restrict_method, "key_or_keyring") == 0) && next) {
		char *key_text;
		key_serial_t serial;
		struct key *key;
		key_restrict_link_func_t link_fn =
			restrict_link_by_key_or_keyring;
		bool allow_null_key = false;

		key_text = FUNC10(&next, ":");

		if (next) {
			if (FUNC9(next, "chain") != 0)
				goto out;

			link_fn = restrict_link_by_key_or_keyring_chain;
			allow_null_key = true;
		}

		if (FUNC8(key_text, 0, &serial) < 0)
			goto out;

		if ((serial == 0) && allow_null_key) {
			key = NULL;
		} else {
			key = FUNC4(serial);
			if (FUNC2(key)) {
				ret = FUNC0(key);
				goto out;
			}
		}

		ret = FUNC3(link_fn, key);
		if (FUNC2(ret))
			FUNC5(key);
	}

out:
	FUNC6(parse_buf);
	return ret;
}