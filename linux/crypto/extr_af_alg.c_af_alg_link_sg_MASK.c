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
struct af_alg_sgl {scalar_t__ sg; scalar_t__ npages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct af_alg_sgl *sgl_prev,
			   struct af_alg_sgl *sgl_new)
{
	FUNC1(sgl_prev->sg + sgl_prev->npages - 1);
	FUNC0(sgl_prev->sg, sgl_prev->npages + 1, sgl_new->sg);
}