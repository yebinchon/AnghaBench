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
struct TYPE_4__ {int /*<<< orphan*/  sg; } ;
struct ablkcipher_walk {TYPE_1__ out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct ablkcipher_walk *walk,
					unsigned int n)
{
	for (;;) {
		unsigned int len_this_page = FUNC1(&walk->out);

		if (len_this_page > n)
			len_this_page = n;
		FUNC0(&walk->out, n);
		if (n == len_this_page)
			break;
		n -= len_this_page;
		FUNC2(&walk->out, FUNC3(walk->out.sg));
	}
}