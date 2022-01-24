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
 int GLAD_GL_VERSION_1_0 ; 
 int GLAD_GL_VERSION_1_1 ; 
 int GLAD_GL_VERSION_1_2 ; 
 int GLAD_GL_VERSION_1_3 ; 
 int GLAD_GL_VERSION_1_4 ; 
 int GLAD_GL_VERSION_1_5 ; 
 int GLAD_GL_VERSION_2_0 ; 
 int GLAD_GL_VERSION_2_1 ; 
 int GLAD_GL_VERSION_3_0 ; 
 int GLAD_GL_VERSION_3_1 ; 
 int GLAD_GL_VERSION_3_2 ; 
 int GLAD_GL_VERSION_3_3 ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int*,int*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  GL_VERSION ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,size_t const) ; 

__attribute__((used)) static int FUNC5(void) {
    int i, major, minor;
    const char* version;
    const char* prefixes[] = {
        "OpenGL ES-CM ",
        "OpenGL ES-CL ",
        "OpenGL ES ",
        NULL
    };
    version = (const char*) FUNC2(GL_VERSION);
    if (!version) return 0;
    for (i = 0;  prefixes[i];  i++) {
        const size_t length = FUNC3(prefixes[i]);
        if (FUNC4(version, prefixes[i], length) == 0) {
            version += length;
            break;
        }
    }

    FUNC0(version, "%d.%d", &major, &minor);

    GLAD_GL_VERSION_1_0 = (major == 1 && minor >= 0) || major > 1;
    GLAD_GL_VERSION_1_1 = (major == 1 && minor >= 1) || major > 1;
    GLAD_GL_VERSION_1_2 = (major == 1 && minor >= 2) || major > 1;
    GLAD_GL_VERSION_1_3 = (major == 1 && minor >= 3) || major > 1;
    GLAD_GL_VERSION_1_4 = (major == 1 && minor >= 4) || major > 1;
    GLAD_GL_VERSION_1_5 = (major == 1 && minor >= 5) || major > 1;
    GLAD_GL_VERSION_2_0 = (major == 2 && minor >= 0) || major > 2;
    GLAD_GL_VERSION_2_1 = (major == 2 && minor >= 1) || major > 2;
    GLAD_GL_VERSION_3_0 = (major == 3 && minor >= 0) || major > 3;
    GLAD_GL_VERSION_3_1 = (major == 3 && minor >= 1) || major > 3;
    GLAD_GL_VERSION_3_2 = (major == 3 && minor >= 2) || major > 3;
    GLAD_GL_VERSION_3_3 = (major == 3 && minor >= 3) || major > 3;

    return FUNC1(major, minor);
}