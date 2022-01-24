#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_driver {TYPE_1__* err_handler; int /*<<< orphan*/  name; } ;
struct pci_dev {int dummy; } ;
struct eeh_dev {int /*<<< orphan*/  pdev; int /*<<< orphan*/  in_error; } ;
typedef  enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
struct TYPE_4__ {int /*<<< orphan*/  (* notify_resume ) (scalar_t__) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* resume ) (struct pci_dev*) ;} ;

/* Variables and functions */
 int PCI_ERS_RESULT_NONE ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 scalar_t__ FUNC0 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct eeh_dev*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* eeh_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static enum pci_ers_result FUNC5(struct eeh_dev *edev,
					     struct pci_dev *pdev,
					     struct pci_driver *driver)
{
	if (!driver->err_handler->resume || !edev->in_error)
		return PCI_ERS_RESULT_NONE;

	FUNC1(edev, "Invoking %s->resume()", driver->name);
	driver->err_handler->resume(pdev);

	FUNC2(edev->pdev, PCI_ERS_RESULT_RECOVERED);
#ifdef CONFIG_PCI_IOV
	if (eeh_ops->notify_resume && eeh_dev_to_pdn(edev))
		eeh_ops->notify_resume(eeh_dev_to_pdn(edev));
#endif
	return PCI_ERS_RESULT_NONE;
}