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
struct TYPE_2__ {int uiVersion; int /*<<< orphan*/  uiTick; int /*<<< orphan*/  fCameraTop; int /*<<< orphan*/  fCameraFront; int /*<<< orphan*/  fCameraPosition; int /*<<< orphan*/  fAvatarTop; int /*<<< orphan*/  fAvatarFront; int /*<<< orphan*/  fAvatarPosition; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* lm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float*,int) ; 

void FUNC2(float fAvatarPosition[3], float fAvatarFront[3], float fAvatarTop[3],
		float fCameraPosition[3], float fCameraFront[3], float fCameraTop[3])
{
	if (!lm)
		return;

	FUNC1(lm->fAvatarPosition, fAvatarPosition, sizeof(lm->fAvatarPosition));
	FUNC1(lm->fAvatarFront, fAvatarFront, sizeof(lm->fAvatarFront));
	FUNC1(lm->fAvatarTop, fAvatarTop, sizeof(lm->fAvatarTop));
	FUNC1(lm->fCameraPosition, fCameraPosition, sizeof(lm->fCameraPosition));
	FUNC1(lm->fCameraFront, fCameraFront, sizeof(lm->fCameraFront));
	FUNC1(lm->fCameraTop, fCameraTop, sizeof(lm->fCameraTop));
	lm->uiVersion = 2;
	lm->uiTick = FUNC0();
}