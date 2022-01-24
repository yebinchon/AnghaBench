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
typedef  int /*<<< orphan*/  u16 ;
struct dac_audio_pdata {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  HD64461_GPADR ; 
 int /*<<< orphan*/  HD64461_GPADR_SPEAKER ; 
 int /*<<< orphan*/  PKDR ; 
 int /*<<< orphan*/  PKDR_SPEAKER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dac_audio_pdata *pdata)
{
	u16 v;
	u8 v8;

	/* HP Jornada 680/690 speaker on */
	v = FUNC1(HD64461_GPADR);
	v &= ~HD64461_GPADR_SPEAKER;
	FUNC3(v, HD64461_GPADR);

	/* HP Palmtop 620lx/660lx speaker on */
	v8 = FUNC0(PKDR);
	v8 &= ~PKDR_SPEAKER;
	FUNC2(v8, PKDR);

	FUNC4(pdata->channel);
}