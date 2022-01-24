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
typedef  int vci_t ;
struct lanai_dev {int num_vci; } ;
struct atm_vcc {int dummy; } ;

/* Variables and functions */
 int ATM_NOT_RSV_VCI ; 
#define  ATM_VCI_ANY 129 
#define  ATM_VPI_ANY 128 
 int EADDRINUSE ; 
 int /*<<< orphan*/  FUNC0 (struct lanai_dev*,int,struct atm_vcc const*) ; 

__attribute__((used)) static int FUNC1(struct lanai_dev *lanai,
	const struct atm_vcc *atmvcc, short *vpip, vci_t *vcip)
{
	switch (*vpip) {
		case ATM_VPI_ANY:
			*vpip = 0;
			/* FALLTHROUGH */
		case 0:
			break;
		default:
			return -EADDRINUSE;
	}
	switch (*vcip) {
		case ATM_VCI_ANY:
			for (*vcip = ATM_NOT_RSV_VCI; *vcip < lanai->num_vci;
			    (*vcip)++)
				if (FUNC0(lanai, *vcip, atmvcc))
					return 0;
			return -EADDRINUSE;
		default:
			if (*vcip >= lanai->num_vci || *vcip < 0 ||
			    !FUNC0(lanai, *vcip, atmvcc))
				return -EADDRINUSE;
	}
	return 0;
}