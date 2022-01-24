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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uiOpenTypeFeatures ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 size_t curFeature ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** features ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 size_t nFeatures ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const,char const,char const,char const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uiOpenTypeFeatures *FUNC4(const char tag[4], uint32_t value)
{
	uiOpenTypeFeatures *otf;

	if (curFeature >= nFeatures) {
		FUNC1(stderr, "TODO (also TODO is there a panic function?)\n");
		FUNC0(EXIT_FAILURE);
	}
	otf = FUNC2();
	FUNC3(otf, tag[0], tag[1], tag[2], tag[3], value);
	features[curFeature] = otf;
	curFeature++;
	return otf;
}