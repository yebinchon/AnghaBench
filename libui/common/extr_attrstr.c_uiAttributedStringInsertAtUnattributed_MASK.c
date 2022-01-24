#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  void* uint16_t ;
struct TYPE_6__ {size_t* u8tou16; size_t len; size_t u16len; char* s; char* u16; char* u16tou8; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ uiAttributedString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,void**) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,char*) ; 

void FUNC9(uiAttributedString *s, const char *str, size_t at)
{
	uint32_t rune;
	char buf[4];
	uint16_t buf16[2];
	size_t n8, n16;		// TODO make loop-local? to avoid using them in the wrong place again
	size_t old, old16;
	size_t oldn8, oldn16;
	size_t oldlen, old16len;
	size_t at16;
	size_t i;

	if (!FUNC2(s, at)) {
		// TODO
	}

	at16 = 0;
	if (s->u8tou16 != NULL)
		at16 = s->u8tou16[at];

	// do this first to reclaim memory
	FUNC0(s);

	// first figure out how much we need to grow by
	// this includes post-validated UTF-8
	FUNC4(str, &n8, &n16);

	// and resize
	old = at;
	old16 = at16;
	oldlen = s->len;
	old16len = s->u16len;
	FUNC3(s, s->len + n8, s->u16len + n16);

	// move existing characters out of the way
	// note the use of memmove(): https://twitter.com/rob_pike/status/737797688217894912
	FUNC1(
		s->s + at + n8,
		s->s + at,
		(oldlen - at) * sizeof (char));
	FUNC1(
		s->u16 + at16 + n16,
		s->u16 + at16,
		(old16len - at16) * sizeof (uint16_t));
	// note the + 1 for these; we want to copy the terminating null too
	FUNC1(
		s->u8tou16 + at + n8,
		s->u8tou16 + at,
		(oldlen - at + 1) * sizeof (size_t));
	FUNC1(
		s->u16tou8 + at16 + n16,
		s->u16tou8 + at16,
		(old16len - at16 + 1) * sizeof (size_t));
	oldn8 = n8;
	oldn16 = n16;

	// and copy
	while (*str) {
		size_t n;

		str = FUNC7(str, 0, &rune);
		n = FUNC8(rune, buf);
		n16 = FUNC6(rune, buf16);
		s->s[old] = buf[0];
		s->u8tou16[old] = old16;
		if (n > 1) {
			s->s[old + 1] = buf[1];
			s->u8tou16[old + 1] = old16;
		}
		if (n > 2) {
			s->s[old + 2] = buf[2];
			s->u8tou16[old + 2] = old16;
		}
		if (n > 3) {
			s->s[old + 3] = buf[3];
			s->u8tou16[old + 3] = old16;
		}
		s->u16[old16] = buf16[0];
		s->u16tou8[old16] = old;
		if (n16 > 1) {
			s->u16[old16 + 1] = buf16[1];
			s->u16tou8[old16 + 1] = old;
		}
		old += n;
		old16 += n16;
	}
	// and have an index for the end of the string
	// TODO is this done by the below?
//TODO	s->u8tou16[old] = old16;
//TODO	s->u16tou8[old16] = old;

	// and adjust the prior values in the conversion tables
	// use <= so the terminating 0 gets updated too
	for (i = 0; i <= oldlen - at; i++)
		s->u8tou16[at + oldn8 + i] += s->u16len - old16len;
	for (i = 0; i <= old16len - at16; i++)
		s->u16tou8[at16 + oldn16 + i] += s->len - oldlen;

	// and finally do the attributes
	FUNC5(s->attrs, at, n8);
}