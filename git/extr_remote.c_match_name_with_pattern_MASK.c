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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,size_t) ; 

__attribute__((used)) static int FUNC9(const char *key, const char *name,
				   const char *value, char **result)
{
	const char *kstar = FUNC6(key, '*');
	size_t klen;
	size_t ksuffixlen;
	size_t namelen;
	int ret;
	if (!kstar)
		FUNC1(FUNC0("key '%s' of pattern had no '*'"), key);
	klen = kstar - key;
	ksuffixlen = FUNC7(kstar + 1);
	namelen = FUNC7(name);
	ret = !FUNC8(name, key, klen) && namelen >= klen + ksuffixlen &&
		!FUNC2(name + namelen - ksuffixlen, kstar + 1, ksuffixlen);
	if (ret && value) {
		struct strbuf sb = STRBUF_INIT;
		const char *vstar = FUNC6(value, '*');
		if (!vstar)
			FUNC1(FUNC0("value '%s' of pattern has no '*'"), value);
		FUNC3(&sb, value, vstar - value);
		FUNC3(&sb, name + klen, namelen - klen - ksuffixlen);
		FUNC4(&sb, vstar + 1);
		*result = FUNC5(&sb, NULL);
	}
	return ret;
}