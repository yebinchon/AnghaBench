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
typedef  int /*<<< orphan*/  u8 ;
struct btmrvl_sdio_card {TYPE_1__* reg; int /*<<< orphan*/  func; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_int_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct btmrvl_sdio_card *card,
								u8 mask)
{
	int ret;

	FUNC1(card->func, mask, card->reg->host_int_mask, &ret);
	if (ret) {
		FUNC0("Unable to enable the host interrupt!");
		ret = -EIO;
	}

	return ret;
}