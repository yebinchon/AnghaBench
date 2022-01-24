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
typedef  int /*<<< orphan*/  kstring_t ;
struct TYPE_4__ {int n; size_t* child; char* name; scalar_t__ d; } ;
typedef  TYPE_1__ knhx1_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(const knhx1_t *node, const knhx1_t *p, kstring_t *s, char *numbuf)
{
	if (p->n) {
		int i;
		FUNC0('(', s);
		for (i = 0; i < p->n; ++i) {
			if (i) FUNC0(',', s);
			FUNC4(node, &node[p->child[i]], s, numbuf);
		}
		FUNC0(')', s);
		if (p->name) FUNC1(p->name, FUNC3(p->name), s);
		if (p->d >= 0) {
			FUNC2(numbuf, ":%g", p->d);
			FUNC1(numbuf, FUNC3(numbuf), s);
		}
	} else FUNC1(p->name, FUNC3(p->name), s);
}