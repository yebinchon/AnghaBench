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
typedef  scalar_t__ GLint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,char const**,int /*<<< orphan*/ *) ; 

GLuint FUNC9(GLenum shader_type, const char *shader_source)
{
    FUNC3(shader_source);

    GLuint shader = FUNC5(shader_type);        FUNC0("glCreateShader");
    if (!shader)
        return 0;

    FUNC3(shader_source);

    FUNC8(shader, 1, &shader_source, NULL);    FUNC1("glShaderSource");
    FUNC4(shader);                            FUNC1("glCompileShader");

    GLint compile_status = 0;
    FUNC7(shader, GL_COMPILE_STATUS, &compile_status);
    if (!compile_status)
        goto fail;

    return shader;

fail:

    if (shader) {
        FUNC2(shader);
        FUNC6(shader);
    }

    return 0;
}