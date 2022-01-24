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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char const*) ; 

__attribute__((used)) static void FUNC1(FFPlayer *ffp, const char *module, const char *version)
{
        FUNC0(ffp, AV_LOG_INFO, "%-*s: %s\n", FFP_VERSION_MODULE_NAME_LENGTH, module, version);
}