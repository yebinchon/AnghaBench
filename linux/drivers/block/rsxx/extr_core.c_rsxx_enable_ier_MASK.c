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
struct rsxx_cardinfo {scalar_t__ regmap; int /*<<< orphan*/  ier_mask; int /*<<< orphan*/  eeh_state; int /*<<< orphan*/  halt; } ;

/* Variables and functions */
 scalar_t__ IER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct rsxx_cardinfo *card, unsigned int intr)
{
	if (FUNC2(card->halt) ||
	    FUNC2(card->eeh_state))
		return;

	FUNC0(&card->ier_mask, intr);
	FUNC1(card->ier_mask, card->regmap + IER);
}