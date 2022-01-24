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
struct TYPE_3__ {int l; int m; char* s; } ;
typedef  TYPE_1__ kstring_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char*,int) ; 

__attribute__((used)) static inline int FUNC3(const char *p, int l, kstring_t *s)
{
	if (s->l + l + 1 >= s->m) {
		s->m = s->l + l + 2;
		FUNC0(s->m);
		s->s = (char*)FUNC2(s->s, s->m);
	}
	FUNC1(s->s + s->l, p, l);
	s->l += l; s->s[s->l] = 0;
	return l;
}