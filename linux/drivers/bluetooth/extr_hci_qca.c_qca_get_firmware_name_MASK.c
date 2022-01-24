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
struct qca_serdev {char const* firmware_name; } ;
struct hci_uart {scalar_t__ serdev; } ;

/* Variables and functions */
 struct qca_serdev* FUNC0 (scalar_t__) ; 

__attribute__((used)) static const char *FUNC1(struct hci_uart *hu)
{
	if (hu->serdev) {
		struct qca_serdev *qsd = FUNC0(hu->serdev);

		return qsd->firmware_name;
	} else {
		return NULL;
	}
}