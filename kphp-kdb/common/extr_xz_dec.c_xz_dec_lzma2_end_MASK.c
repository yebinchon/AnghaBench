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
struct TYPE_2__ {struct xz_dec_lzma2* buf; int /*<<< orphan*/  mode; } ;
struct xz_dec_lzma2 {TYPE_1__ dict; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xz_dec_lzma2*) ; 

void FUNC2(struct xz_dec_lzma2 *s)
{
	if (FUNC0(s->dict.mode))
		FUNC1(s->dict.buf);

	FUNC1(s);
}