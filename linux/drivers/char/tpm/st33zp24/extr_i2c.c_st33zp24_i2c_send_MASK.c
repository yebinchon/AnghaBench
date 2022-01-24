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
typedef  int u8 ;

/* Variables and functions */
 int TPM_WRITE_DIRECTION ; 
 int FUNC0 (void*,int,int*,int) ; 

__attribute__((used)) static int FUNC1(void *phy_id, u8 tpm_register, u8 *tpm_data,
			     int tpm_size)
{
	return FUNC0(phy_id, tpm_register | TPM_WRITE_DIRECTION, tpm_data,
			  tpm_size);
}