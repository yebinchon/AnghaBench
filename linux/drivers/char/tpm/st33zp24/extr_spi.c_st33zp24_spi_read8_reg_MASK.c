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
typedef  int /*<<< orphan*/  u8 ;
struct st33zp24_spi_phy {int* rx_buf; int latency; int /*<<< orphan*/ * tx_buf; struct spi_device* spi_device; } ;
struct spi_transfer {int* rx_buf; int len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCALITY0 ; 
 int /*<<< orphan*/  TPM_DUMMY_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct spi_device*,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC3(void *phy_id, u8 tpm_register, u8 *tpm_data,
				  int tpm_size)
{
	int total_length = 0, ret;
	struct st33zp24_spi_phy *phy = phy_id;
	struct spi_device *dev = phy->spi_device;
	struct spi_transfer spi_xfer = {
		.tx_buf = phy->tx_buf,
		.rx_buf = phy->rx_buf,
	};

	/* Pre-Header */
	phy->tx_buf[total_length++] = LOCALITY0;
	phy->tx_buf[total_length++] = tpm_register;

	FUNC1(&phy->tx_buf[total_length], TPM_DUMMY_BYTE,
	       phy->latency + tpm_size);

	spi_xfer.len = total_length + phy->latency + tpm_size;

	/* header + status byte + size of the data + status byte */
	ret = FUNC2(dev, &spi_xfer, 1);
	if (tpm_size > 0 && ret == 0) {
		ret = phy->rx_buf[total_length + phy->latency - 1];

		FUNC0(tpm_data, phy->rx_buf + total_length + phy->latency,
		       tpm_size);
	}

	return ret;
}