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
struct TYPE_2__ {int /*<<< orphan*/  buffHeight; int /*<<< orphan*/  buffWidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ glConfig ; 
 int /*<<< orphan*/  osmesa_ctx ; 
 int /*<<< orphan*/  osmesa_frame_buffer ; 

void FUNC2(void) {
  if (!FUNC0(osmesa_ctx, osmesa_frame_buffer, GL_UNSIGNED_BYTE,
                         glConfig.buffWidth, glConfig.buffHeight)) {
    FUNC1("GLimp_MakeCurrent - Failed!");
  }
}