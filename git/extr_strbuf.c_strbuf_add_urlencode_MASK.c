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
typedef  scalar_t__ (* char_predicate ) (char) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,size_t) ; 

__attribute__((used)) static void FUNC3(struct strbuf *sb, const char *s, size_t len,
				 char_predicate allow_unencoded_fn)
{
	FUNC2(sb, len);
	while (len--) {
		char ch = *s++;
		if (allow_unencoded_fn(ch))
			FUNC0(sb, ch);
		else
			FUNC1(sb, "%%%02x", (unsigned char)ch);
	}
}