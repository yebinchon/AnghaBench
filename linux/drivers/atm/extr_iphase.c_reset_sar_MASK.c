#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct atm_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pci; scalar_t__ reg; } ;
typedef  TYPE_1__ IADEV ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct atm_dev*) ; 
 scalar_t__ IPHASE5575_EXT_RESET ; 
 int PCIBIOS_SUCCESSFUL ; 
 int FUNC1 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct atm_dev *dev)  
{  
	IADEV *iadev;  
	int i, error = 1;  
	unsigned int pci[64];  
	  
	iadev = FUNC0(dev);  
	for(i=0; i<64; i++)  
	  if ((error = FUNC1(iadev->pci,  
				i*4, &pci[i])) != PCIBIOS_SUCCESSFUL)  
  	      return error;  
	FUNC4(0, iadev->reg+IPHASE5575_EXT_RESET);  
	for(i=0; i<64; i++)  
	  if ((error = FUNC2(iadev->pci,  
					i*4, pci[i])) != PCIBIOS_SUCCESSFUL)  
	    return error;  
	FUNC3(5);  
	return 0;  
}