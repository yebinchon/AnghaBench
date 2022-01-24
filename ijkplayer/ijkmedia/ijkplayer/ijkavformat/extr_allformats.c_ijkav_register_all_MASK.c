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
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  async ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ijkhttphook ; 
 int /*<<< orphan*/  ijkio ; 
 int /*<<< orphan*/  ijklivehook ; 
 int /*<<< orphan*/  ijklongurl ; 
 int /*<<< orphan*/  ijkmediadatasource ; 
 int /*<<< orphan*/  ijksegment ; 
 int /*<<< orphan*/  ijktcphook ; 

void FUNC4(void)
{
    static int initialized;

    if (initialized)
        return;
    initialized = 1;

    FUNC3();

    /* protocols */
    FUNC2(NULL, AV_LOG_INFO, "===== custom modules begin =====\n");
#ifdef __ANDROID__
    IJK_REGISTER_PROTOCOL(ijkmediadatasource);
#endif
    FUNC1(ijkio);
    FUNC1(async);
    FUNC1(ijklongurl);
    FUNC1(ijktcphook);
    FUNC1(ijkhttphook);
    FUNC1(ijksegment);
    /* demuxers */
    FUNC0(ijklivehook);
    FUNC2(NULL, AV_LOG_INFO, "===== custom modules end =====\n");
}