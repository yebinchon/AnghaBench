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
typedef  int /*<<< orphan*/  FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FFP_VERSION_MODULE_NAME_LENGTH ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(FFPlayer *ffp, const char *module, unsigned version)
{
    FUNC3(ffp, AV_LOG_INFO, "%-*s: %u.%u.%u\n",
           FFP_VERSION_MODULE_NAME_LENGTH, module,
           (unsigned int)FUNC0(version),
           (unsigned int)FUNC2(version),
           (unsigned int)FUNC1(version));
}