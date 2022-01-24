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
struct sata_gemini {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct sata_gemini* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sata_gemini* sg_singleton ; 

struct sata_gemini *FUNC1(void)
{
	if (sg_singleton)
		return sg_singleton;
	return FUNC0(-EPROBE_DEFER);
}