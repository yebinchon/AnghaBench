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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int mode; scalar_t__ allocated; int /*<<< orphan*/ * buf; int /*<<< orphan*/  size_max; } ;
struct xz_dec_lzma2 {TYPE_1__ dict; } ;
typedef  enum xz_mode { ____Placeholder_xz_mode } xz_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct xz_dec_lzma2* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xz_dec_lzma2*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

struct xz_dec_lzma2 *FUNC5(enum xz_mode mode,
						   uint32_t dict_max)
{
	struct xz_dec_lzma2 *s = FUNC2(sizeof(*s), 1);
	if (s == NULL)
		return NULL;

	s->dict.mode = mode;
	s->dict.size_max = dict_max;

	if (FUNC1(mode)) {
		s->dict.buf = FUNC4(dict_max);
		if (s->dict.buf == NULL) {
			FUNC3(s);
			return NULL;
		}
	} else if (FUNC0(mode)) {
		s->dict.buf = NULL;
		s->dict.allocated = 0;
	}

	return s;
}