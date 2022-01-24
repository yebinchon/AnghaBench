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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sccb_mask_t ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 

__attribute__((used)) static inline sccb_mask_t FUNC2(u8 *masks, size_t len, int i)
{
	sccb_mask_t res = 0;

	FUNC0(&res, masks + i * len, FUNC1(sizeof(res), len));
	return res;
}