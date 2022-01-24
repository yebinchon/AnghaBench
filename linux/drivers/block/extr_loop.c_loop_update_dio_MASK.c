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
struct loop_device {int use_dio; int /*<<< orphan*/  lo_backing_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop_device*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct loop_device *lo)
{
	FUNC0(lo, FUNC1(lo->lo_backing_file) |
			lo->use_dio);
}