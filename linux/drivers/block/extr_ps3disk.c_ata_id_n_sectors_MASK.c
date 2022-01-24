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
typedef  int const u64 ;
typedef  int u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int const*) ; 
 scalar_t__ FUNC2 (int const*) ; 
 int const FUNC3 (int const*,int) ; 
 int const FUNC4 (int const*,int) ; 

__attribute__((used)) static u64 FUNC5(const u16 *id)
{
	if (FUNC1(id)) {
		if (FUNC2(id))
			return FUNC4(id, 100);
		else
			return FUNC3(id, 60);
	} else {
		if (FUNC0(id))
			return FUNC3(id, 57);
		else
			return id[1] * id[3] * id[6];
	}
}