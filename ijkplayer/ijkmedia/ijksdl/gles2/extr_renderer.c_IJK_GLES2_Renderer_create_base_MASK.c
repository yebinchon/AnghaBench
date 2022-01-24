#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ program; int /*<<< orphan*/  um4_mvp; void* av2_texcoord; void* av4_position; void* fragment_shader; void* vertex_shader; } ;
typedef  TYPE_1__ IJK_GLES2_Renderer ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char const* FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,void*) ; 
 scalar_t__ FUNC9 () ; 
 void* FUNC10 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

IJK_GLES2_Renderer *FUNC14(const char *fragment_shader_source)
{
    FUNC6(fragment_shader_source);

    IJK_GLES2_Renderer *renderer = (IJK_GLES2_Renderer *)FUNC7(1, sizeof(IJK_GLES2_Renderer));
    if (!renderer)
        goto fail;

    renderer->vertex_shader = FUNC4(GL_VERTEX_SHADER, FUNC3());
    if (!renderer->vertex_shader)
        goto fail;

    renderer->fragment_shader = FUNC4(GL_FRAGMENT_SHADER, fragment_shader_source);
    if (!renderer->fragment_shader)
        goto fail;

    renderer->program = FUNC9();                          FUNC1("glCreateProgram");
    if (!renderer->program)
        goto fail;

    FUNC8(renderer->program, renderer->vertex_shader);     FUNC1("glAttachShader(vertex)");
    FUNC8(renderer->program, renderer->fragment_shader);   FUNC1("glAttachShader(fragment)");
    FUNC13(renderer->program);                               FUNC1("glLinkProgram");
    GLint link_status = GL_FALSE;
    FUNC11(renderer->program, GL_LINK_STATUS, &link_status);
    if (!link_status)
        goto fail;


    renderer->av4_position = FUNC10(renderer->program, "av4_Position");                FUNC2("glGetAttribLocation(av4_Position)");
    renderer->av2_texcoord = FUNC10(renderer->program, "av2_Texcoord");                FUNC2("glGetAttribLocation(av2_Texcoord)");
    renderer->um4_mvp      = FUNC12(renderer->program, "um4_ModelViewProjection");    FUNC2("glGetUniformLocation(um4_ModelViewProjection)");

    return renderer;

fail:

    if (renderer && renderer->program)
        FUNC5(renderer->program);

    FUNC0(renderer);
    return NULL;
}