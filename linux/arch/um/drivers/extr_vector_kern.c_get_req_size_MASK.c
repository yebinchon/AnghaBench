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
struct arglist {int dummy; } ;

/* Variables and functions */
 int ETH_HEADER_OTHER ; 
 int SAFETY_MARGIN ; 
 int FUNC0 (struct arglist*) ; 
 int FUNC1 (struct arglist*) ; 
 scalar_t__ FUNC2 (char*,int,long*) ; 
 char* FUNC3 (struct arglist*,char*) ; 

__attribute__((used)) static int FUNC4(struct arglist *def)
{
	char *gro = FUNC3(def, "gro");
	long result;

	if (gro != NULL) {
		if (FUNC2(gro, 10, &result) == 0) {
			if (result > 0)
				return 65536;
		}
	}
	return FUNC1(def) + ETH_HEADER_OTHER +
		FUNC0(def) + SAFETY_MARGIN;
}