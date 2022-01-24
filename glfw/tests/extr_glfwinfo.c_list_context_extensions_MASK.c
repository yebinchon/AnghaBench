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
typedef  char GLubyte ;
typedef  int GLint ;

/* Variables and functions */
 int GLFW_OPENGL_API ; 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_NUM_EXTENSIONS ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 

__attribute__((used)) static void FUNC6(int client, int major, int minor)
{
    FUNC4("%s context extensions:\n", FUNC0(client));

    if (client == GLFW_OPENGL_API && major > 2)
    {
        GLint count;
        FUNC1(GL_NUM_EXTENSIONS, &count);

        for (int i = 0;  i < count;  i++)
            FUNC4(" %s\n", (const char*) FUNC3(GL_EXTENSIONS, i));
    }
    else
    {
        const GLubyte* extensions = FUNC2(GL_EXTENSIONS);
        while (*extensions != '\0')
        {
            FUNC5(' ');

            while (*extensions != '\0' && *extensions != ' ')
            {
                FUNC5(*extensions);
                extensions++;
            }

            while (*extensions == ' ')
                extensions++;

            FUNC5('\n');
        }
    }
}