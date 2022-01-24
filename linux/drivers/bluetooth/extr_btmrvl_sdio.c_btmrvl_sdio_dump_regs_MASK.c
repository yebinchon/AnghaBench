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
typedef  int u8 ;
struct btmrvl_sdio_card {int /*<<< orphan*/  func; } ;
struct TYPE_2__ {struct btmrvl_sdio_card* card; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 

__attribute__((used)) static void FUNC8(struct btmrvl_private *priv)
{
	struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;
	int ret = 0;
	unsigned int reg, reg_start, reg_end;
	char buf[256], *ptr;
	u8 loop, func, data;
	int MAX_LOOP = 2;

	FUNC1(priv);
	FUNC3(card->func);

	for (loop = 0; loop < MAX_LOOP; loop++) {
		FUNC2(buf, 0, sizeof(buf));
		ptr = buf;

		if (loop == 0) {
			/* Read the registers of SDIO function0 */
			func = loop;
			reg_start = 0;
			reg_end = 9;
		} else {
			func = 2;
			reg_start = 0;
			reg_end = 0x09;
		}

		ptr += FUNC7(ptr, "SDIO Func%d (%#x-%#x): ",
			       func, reg_start, reg_end);
		for (reg = reg_start; reg <= reg_end; reg++) {
			if (func == 0)
				data = FUNC4(card->func, reg, &ret);
			else
				data = FUNC5(card->func, reg, &ret);

			if (!ret) {
				ptr += FUNC7(ptr, "%02x ", data);
			} else {
				ptr += FUNC7(ptr, "ERR");
				break;
			}
		}

		FUNC0("%s", buf);
	}

	FUNC6(card->func);
}