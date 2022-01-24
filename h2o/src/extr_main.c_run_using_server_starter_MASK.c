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
 int EX_CONFIG ; 
 char** FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *h2o_cmd, const char *config_file)
{
    char **args = FUNC0(h2o_cmd, config_file);
    FUNC3("H2O_VIA_MASTER", "", 1);
    FUNC1(args[0], args);
    FUNC2(stderr, "failed to spawn %s:%s\n", args[0], FUNC4(errno));
    return EX_CONFIG;
}