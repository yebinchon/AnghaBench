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
struct tpm_space {scalar_t__* session_tbl; } ;
struct tpm_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_chip*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct tpm_chip *chip, struct tpm_space *space)
{
	int i;

	for (i = 0; i < FUNC0(space->session_tbl); i++) {
		if (space->session_tbl[i])
			FUNC1(chip, space->session_tbl[i]);
	}
}