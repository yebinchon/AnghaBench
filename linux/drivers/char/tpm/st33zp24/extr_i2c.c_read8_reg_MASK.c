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
struct st33zp24_i2c_phy {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int TPM_DUMMY_BYTE ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (struct st33zp24_i2c_phy*,int,int*,int) ; 

__attribute__((used)) static int FUNC2(void *phy_id, u8 tpm_register, u8 *tpm_data, int tpm_size)
{
	struct st33zp24_i2c_phy *phy = phy_id;
	u8 status = 0;
	u8 data;

	data = TPM_DUMMY_BYTE;
	status = FUNC1(phy, tpm_register, &data, 1);
	if (status == 2)
		status = FUNC0(phy->client, tpm_data, tpm_size);
	return status;
}