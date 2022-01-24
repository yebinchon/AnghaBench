#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct TYPE_7__ {scalar_t__ len; } ;
struct mailinfo {TYPE_1__ email; TYPE_1__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void FUNC5(struct mailinfo *mi, const struct strbuf *line)
{
	/* John Doe <johndoe> */

	char *bra, *ket;
	/* This is fallback, so do not bother if we already have an
	 * e-mail address.
	 */
	if (mi->email.len)
		return;

	bra = FUNC4(line->buf, '<');
	if (!bra)
		return;
	ket = FUNC4(bra, '>');
	if (!ket)
		return;

	FUNC2(&mi->email);
	FUNC1(&mi->email, bra + 1, ket - bra - 1);

	FUNC2(&mi->name);
	FUNC1(&mi->name, line->buf, bra - line->buf);
	FUNC3(&mi->name);
	FUNC0(&mi->name, &mi->name, &mi->email);
}