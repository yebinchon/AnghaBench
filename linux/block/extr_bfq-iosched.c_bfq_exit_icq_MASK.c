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
struct io_cq {int dummy; } ;
struct bfq_io_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_io_cq*,int) ; 
 struct bfq_io_cq* FUNC1 (struct io_cq*) ; 

__attribute__((used)) static void FUNC2(struct io_cq *icq)
{
	struct bfq_io_cq *bic = FUNC1(icq);

	FUNC0(bic, true);
	FUNC0(bic, false);
}