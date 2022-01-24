#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  gbwc; void* retryto; void* trdyto; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_1__ tx4927_pci_opts ; 

char *FUNC3(char *str)
{
	if (!FUNC2(str, "trdyto=", 7)) {
		u8 val = 0;
		if (FUNC1(str + 7, 0, &val) == 0)
			tx4927_pci_opts.trdyto = val;
		return NULL;
	}
	if (!FUNC2(str, "retryto=", 8)) {
		u8 val = 0;
		if (FUNC1(str + 8, 0, &val) == 0)
			tx4927_pci_opts.retryto = val;
		return NULL;
	}
	if (!FUNC2(str, "gbwc=", 5)) {
		u16 val;
		if (FUNC0(str + 5, 0, &val) == 0)
			tx4927_pci_opts.gbwc = val;
		return NULL;
	}
	return str;
}