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
typedef  int u32 ;
struct factors_request {int parent_rate; int rate; int p; int m; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct factors_request *req)
{
	u32 div;

	if (req->parent_rate < req->rate)
		req->rate = req->parent_rate;

	div = FUNC0(req->parent_rate, req->rate);

	/* Highest possible divider is 256 (p = 3, m = 31) */
	if (div > 256)
		div = 256;

	req->p = FUNC1(div);
	req->m = (req->parent_rate >> req->p) - 1;
	req->rate = (req->parent_rate >> req->p) / (req->m + 1);
}