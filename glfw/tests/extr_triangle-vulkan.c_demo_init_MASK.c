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
struct demo {scalar_t__ frameCount; int use_staging_buffer; int use_break; int validate; int width; int height; double depthStencil; float depthIncrement; } ;

/* Variables and functions */
 char* APP_SHORT_NAME ; 
 scalar_t__ INT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct demo*) ; 
 int /*<<< orphan*/  FUNC1 (struct demo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct demo*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(struct demo *demo, const int argc, const char *argv[])
{
    int i;
    FUNC5(demo, 0, sizeof(*demo));
    demo->frameCount = INT32_MAX;

    for (i = 1; i < argc; i++) {
        if (FUNC7(argv[i], "--use_staging") == 0) {
            demo->use_staging_buffer = true;
            continue;
        }
        if (FUNC7(argv[i], "--break") == 0) {
            demo->use_break = true;
            continue;
        }
        if (FUNC7(argv[i], "--validate") == 0) {
            demo->validate = true;
            continue;
        }
        if (FUNC7(argv[i], "--c") == 0 && demo->frameCount == INT32_MAX &&
            i < argc - 1 && FUNC6(argv[i + 1], "%d", &demo->frameCount) == 1 &&
            demo->frameCount >= 0) {
            i++;
            continue;
        }

        FUNC4(stderr, "Usage:\n  %s [--use_staging] [--validate] [--break] "
                        "[--c <framecount>]\n",
                APP_SHORT_NAME);
        FUNC3(stderr);
        FUNC2(1);
    }

    FUNC0(demo);
    FUNC1(demo);

    demo->width = 300;
    demo->height = 300;
    demo->depthStencil = 1.0;
    demo->depthIncrement = -0.01f;
}