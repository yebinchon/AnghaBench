#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ l; scalar_t__ m; char* s; } ;
typedef  TYPE_1__ kstring_t ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static inline int FUNC3(unsigned c, kstring_t *s)
{
	char buf[16];
	int l, i;
	unsigned x;
	if (c == 0) return FUNC0('0', s);
	for (l = 0, x = c; x > 0; x /= 10) buf[l++] = x%10 + '0';
	if (s->l + l + 1 >= s->m) {
		char *tmp;
		s->m = s->l + l + 2;
		FUNC1(s->m);
		if ((tmp = (char*)FUNC2(s->s, s->m)))
			s->s = tmp;
		else
			return EOF;
	}
	for (i = l - 1; i >= 0; --i) s->s[s->l++] = buf[i];
	s->s[s->l] = 0;
	return 0;
}