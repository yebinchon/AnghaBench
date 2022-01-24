#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * start; int /*<<< orphan*/ * ptr; int /*<<< orphan*/ * end; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct lanai_vcc {TYPE_2__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct lanai_vcc *lvcc,
	int len, int cpi, int uu)
{
	FUNC0((((unsigned long) lvcc->tx.buf.ptr) & 15) == 8,
	    "vcc_tx_add_aal5_trailer: bad ptr=%p\n", lvcc->tx.buf.ptr);
	lvcc->tx.buf.ptr += 2;
	lvcc->tx.buf.ptr[-2] = FUNC1((uu << 24) | (cpi << 16) | len);
	if (lvcc->tx.buf.ptr >= lvcc->tx.buf.end)
		lvcc->tx.buf.ptr = lvcc->tx.buf.start;
}