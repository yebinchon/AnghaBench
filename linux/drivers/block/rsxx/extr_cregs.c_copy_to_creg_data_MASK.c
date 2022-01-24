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
typedef  int /*<<< orphan*/  u32 ;
struct rsxx_cardinfo {scalar_t__ regmap; int /*<<< orphan*/  eeh_state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EIO ; 
 scalar_t__ LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rsxx_cardinfo *card,
			      int cnt8,
			      void *buf,
			      unsigned int stream)
{
	int i = 0;
	u32 *data = buf;

	if (FUNC3(card->eeh_state))
		return -EIO;

	for (i = 0; cnt8 > 0; i++, cnt8 -= 4) {
		/*
		 * Firmware implementation makes it necessary to byte swap on
		 * little endian processors.
		 */
		if (LITTLE_ENDIAN && stream)
			FUNC2(data[i], card->regmap + FUNC0(i));
		else
			FUNC1(data[i], card->regmap + FUNC0(i));
	}

	return 0;
}