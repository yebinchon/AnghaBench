#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct xz_dec {int mode; int /*<<< orphan*/ * lzma2; } ;
typedef  enum xz_mode { ____Placeholder_xz_mode } xz_mode ;

/* Variables and functions */
 struct xz_dec* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xz_dec*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xz_dec*) ; 

struct xz_dec *FUNC4(enum xz_mode mode, uint32_t dict_max)
{
	struct xz_dec *s = FUNC0(sizeof(*s), 1);
	if (s == NULL)
		return NULL;

	s->mode = mode;

	s->lzma2 = FUNC2(mode, dict_max);
	if (s->lzma2 == NULL)
		goto error_lzma2;

	FUNC3(s);
	return s;

error_lzma2:
	FUNC1(s);
	return NULL;
}