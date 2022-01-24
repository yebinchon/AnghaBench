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
typedef  unsigned int GLuint ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 scalar_t__ GL_TRUE ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static GLuint FUNC9(const char* vs_text, const char* fs_text)
{
    GLuint program = 0u;
    GLint program_ok;
    GLuint vertex_shader = 0u;
    GLuint fragment_shader = 0u;
    GLsizei log_length;
    char info_log[8192];

    vertex_shader = FUNC8(GL_VERTEX_SHADER, vs_text);
    if (vertex_shader != 0u)
    {
        fragment_shader = FUNC8(GL_FRAGMENT_SHADER, fs_text);
        if (fragment_shader != 0u)
        {
            /* make the program that connect the two shader and link it */
            program = FUNC2();
            if (program != 0u)
            {
                /* attach both shader and link */
                FUNC1(program, vertex_shader);
                FUNC1(program, fragment_shader);
                FUNC7(program);
                FUNC6(program, GL_LINK_STATUS, &program_ok);

                if (program_ok != GL_TRUE)
                {
                    FUNC0(stderr, "ERROR, failed to link shader program\n");
                    FUNC5(program, 8192, &log_length, info_log);
                    FUNC0(stderr, "ERROR: \n%s\n\n", info_log);
                    FUNC3(program);
                    FUNC4(fragment_shader);
                    FUNC4(vertex_shader);
                    program = 0u;
                }
            }
        }
        else
        {
            FUNC0(stderr, "ERROR: Unable to load fragment shader\n");
            FUNC4(vertex_shader);
        }
    }
    else
    {
        FUNC0(stderr, "ERROR: Unable to load vertex shader\n");
    }
    return program;
}