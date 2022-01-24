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
struct TYPE_2__ {float timeOffset; int /*<<< orphan*/  oldShader; int /*<<< orphan*/  newShader; } ;

/* Variables and functions */
 int MAX_SHADER_REMAPS ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int remapCount ; 
 TYPE_1__* remappedShaders ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 

void FUNC2(const char *oldShader, const char *newShader, float timeOffset) {
	int i;

	for (i = 0; i < remapCount; i++) {
		if (FUNC0(oldShader, remappedShaders[i].oldShader) == 0) {
			// found it, just update this one
			FUNC1(remappedShaders[i].newShader,newShader);
			remappedShaders[i].timeOffset = timeOffset;
			return;
		}
	}
	if (remapCount < MAX_SHADER_REMAPS) {
		FUNC1(remappedShaders[remapCount].newShader,newShader);
		FUNC1(remappedShaders[remapCount].oldShader,oldShader);
		remappedShaders[remapCount].timeOffset = timeOffset;
		remapCount++;
	}
}