#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; int len; } ;
struct TYPE_3__ {unsigned int bit; char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* pathspec_magic ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 

__attribute__((used)) static void FUNC4(struct strbuf *sb, int prefixlen, unsigned magic)
{
	int i;
	FUNC3(sb, ":(");
	for (i = 0; i < FUNC0(pathspec_magic); i++)
		if (magic & pathspec_magic[i].bit) {
			if (sb->buf[sb->len - 1] != '(')
				FUNC1(sb, ',');
			FUNC3(sb, pathspec_magic[i].name);
		}
	FUNC2(sb, ",prefix:%d)", prefixlen);
}