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
struct vas_window {int dummy; } ;
struct vas_winctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_RSVD_BUF_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vas_window*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC2(struct vas_window *txwin,
				struct vas_winctx *winctx)
{
	FUNC1(txwin, FUNC0(TX_RSVD_BUF_COUNT), 0ULL);
}