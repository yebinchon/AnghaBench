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
typedef  scalar_t__ GLuint ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  scalar_t__ GLint ;
typedef  scalar_t__ GLenum ;
typedef  int /*<<< orphan*/  GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 scalar_t__ GL_FRAGMENT_SHADER ; 
 scalar_t__ GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static GLuint FUNC7(GLenum type, const char* text)
{
    GLuint shader;
    GLint shader_ok;
    GLsizei log_length;
    char info_log[8192];

    shader = FUNC2(type);
    if (shader != 0)
    {
        FUNC6(shader, 1, (const GLchar**)&text, NULL);
        FUNC1(shader);
        FUNC5(shader, GL_COMPILE_STATUS, &shader_ok);
        if (shader_ok != GL_TRUE)
        {
            FUNC0(stderr, "ERROR: Failed to compile %s shader\n", (type == GL_FRAGMENT_SHADER) ? "fragment" : "vertex" );
            FUNC4(shader, 8192, &log_length,info_log);
            FUNC0(stderr, "ERROR: \n%s\n\n", info_log);
            FUNC3(shader);
            shader = 0;
        }
    }
    return shader;
}