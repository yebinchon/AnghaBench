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

/* Variables and functions */
 int /*<<< orphan*/  ASSABET_BCR_NCODEC_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int codec_nreset ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned mask, int set)
{
	unsigned long flags;
	bool old;

	FUNC4(flags);
	old = !codec_nreset;
	if (set)
		codec_nreset &= ~mask;
	else
		codec_nreset |= mask;

	if (old != !codec_nreset) {
		if (codec_nreset) {
			FUNC1(ASSABET_BCR_NCODEC_RST);
			FUNC2();
		} else {
			FUNC0(ASSABET_BCR_NCODEC_RST);
		}
	}
	FUNC3(flags);
}