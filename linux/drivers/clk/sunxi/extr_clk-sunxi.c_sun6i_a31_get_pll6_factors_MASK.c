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
typedef  int u8 ;
struct factors_request {int rate; int parent_rate; int k; scalar_t__ n; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(struct factors_request *req)
{
	u8 div;

	/* Normalize value to a parent_rate multiple (24M) */
	div = req->rate / req->parent_rate;
	req->rate = req->parent_rate * div;

	req->k = div / 32;
	if (req->k > 3)
		req->k = 3;

	req->n = FUNC0(div, (req->k + 1)) - 1;
}