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
struct admhcd {int dummy; } ;

/* Variables and functions */
 int ADMHC_PS_CCS ; 
 int /*<<< orphan*/  ADMHC_PS_CPE ; 
 int ENODEV ; 
 int FUNC0 (struct admhcd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct admhcd*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct admhcd*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct admhcd *ahcd, unsigned port)
{
	u32 t;

	FUNC1(ahcd, "disable port%d\n", port);
	t = FUNC0(ahcd, port);
	if (!(t & ADMHC_PS_CCS))
		return -ENODEV;

	FUNC2(ahcd, port, ADMHC_PS_CPE);

	return 0;
}