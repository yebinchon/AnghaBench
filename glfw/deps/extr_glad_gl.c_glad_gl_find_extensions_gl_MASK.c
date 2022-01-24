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
 void* GLAD_GL_ARB_multisample ; 
 void* GLAD_GL_ARB_robustness ; 
 void* GLAD_GL_KHR_debug ; 
 int /*<<< orphan*/  FUNC0 (char**,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**,unsigned int*,char***) ; 
 void* FUNC2 (int,char const*,unsigned int,char**,char*) ; 

__attribute__((used)) static int FUNC3( int version) {
    const char *exts = NULL;
    unsigned int num_exts_i = 0;
    char **exts_i = NULL;
    if (!FUNC1(version, &exts, &num_exts_i, &exts_i)) return 0;

    GLAD_GL_ARB_multisample = FUNC2(version, exts, num_exts_i, exts_i, "GL_ARB_multisample");
    GLAD_GL_ARB_robustness = FUNC2(version, exts, num_exts_i, exts_i, "GL_ARB_robustness");
    GLAD_GL_KHR_debug = FUNC2(version, exts, num_exts_i, exts_i, "GL_KHR_debug");

    FUNC0(exts_i, num_exts_i);

    return 1;
}