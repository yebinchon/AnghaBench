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
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct proxy_dev {scalar_t__ resp_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  VTPM_PROXY_REQ_COMPLETE_FLAG ; 
 struct proxy_dev* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC1(struct tpm_chip *chip)
{
	struct proxy_dev *proxy_dev = FUNC0(&chip->dev);

	if (proxy_dev->resp_len)
		return VTPM_PROXY_REQ_COMPLETE_FLAG;

	return 0;
}