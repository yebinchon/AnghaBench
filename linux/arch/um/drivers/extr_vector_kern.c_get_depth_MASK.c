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
 int DEFAULT_VECTOR_SIZE ; 
 scalar_t__ FUNC0 (char*,int,long*) ; 
 char* FUNC1 (struct arglist*,char*) ; 

__attribute__((used)) static int FUNC2(struct arglist *def)
{
	char *mtu = FUNC1(def, "depth");
	long result;

	if (mtu != NULL) {
		if (FUNC0(mtu, 10, &result) == 0)
			return result;
	}
	return DEFAULT_VECTOR_SIZE;
}