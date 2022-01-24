#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_2__ {int len; char* buf; } ;
struct json_writer {TYPE_1__ json; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static void FUNC3(struct strbuf *sb,
			    const struct json_writer *jw,
			    int indent)
{
	int k;

	FUNC2(sb);
	for (k = 0; k < jw->json.len; k++) {
		char ch = jw->json.buf[k];
		FUNC0(sb, ch);
		if (ch == '\n')
			FUNC1(sb, ' ', indent);
	}
}