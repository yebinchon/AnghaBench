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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {size_t* u8tou16; size_t* s; size_t len; size_t* u16; size_t u16len; size_t* u16tou8; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ uiAttributedString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,size_t) ; 

void FUNC5(uiAttributedString *s, size_t start, size_t end)
{
	size_t start16, end16;
	size_t count, count16;
	size_t i;

	if (!FUNC2(s, start)) {
		// TODO
	}
	if (!FUNC2(s, end)) {
		// TODO
	}

	count = end - start;
	start16 = s->u8tou16[start];
	end16 = s->u8tou16[end];
	count16 = end16 - start16;

	FUNC0(s);

	// overwrite old characters
	FUNC1(
		s->s + start,
		s->s + end,
		(s->len - end) * sizeof (char));
	FUNC1(
		s->u16 + start16,
		s->u16 + end16,
		(s->u16len - end16) * sizeof (uint16_t));
	// note the + 1 for these; we want to copy the terminating null too
	FUNC1(
		s->u8tou16 + start,
		s->u8tou16 + end,
		(s->len - end + 1) * sizeof (size_t));
	FUNC1(
		s->u16tou8 + start16,
		s->u16tou8 + end16,
		(s->u16len - end16 + 1) * sizeof (size_t));

	// update the conversion tables
	// note the use of <= to include the null terminator
	for (i = 0; i <= (s->len - end); i++)
		s->u8tou16[start + i] -= count16;
	for (i = 0; i <= (s->u16len - end16); i++)
		s->u16tou8[start16 + i] -= count;

	// null-terminate the string
	s->s[start + (s->len - end)] = 0;
	s->u16[start16 + (s->u16len - end16)] = 0;

	// fix up attributes
	FUNC4(s->attrs, start, end);

	// and finally resize
	FUNC3(s, s->len - count, s->u16len - count16);
}