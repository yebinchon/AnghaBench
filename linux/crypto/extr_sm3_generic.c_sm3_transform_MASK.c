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
typedef  int /*<<< orphan*/  wt ;
typedef  int /*<<< orphan*/  w ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sm3_state {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC3(struct sm3_state *sst, u8 const *src)
{
	unsigned int w[68];
	unsigned int wt[64];

	FUNC2((u32 *)src, w, wt);
	FUNC1(w, wt, sst->state);

	FUNC0(w, sizeof(w));
	FUNC0(wt, sizeof(wt));
}