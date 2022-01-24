#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*) ;} ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  GLSL_PRINTLOG_SHADER_INFO ; 
 int /*<<< orphan*/  GLSL_PRINTLOG_SHADER_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,int*) ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(GLuint program, GLuint *prevShader, const GLchar *buffer, int size, GLenum shaderType)
{
	GLint           compiled;
	GLuint          shader;

	shader = FUNC3(shaderType);

	FUNC7(shader, 1, (const GLchar **)&buffer, &size);

	// compile shader
	FUNC2(shader);

	// check if shader compiled
	FUNC6(shader, GL_COMPILE_STATUS, &compiled);
	if(!compiled)
	{
		FUNC0(shader, GLSL_PRINTLOG_SHADER_SOURCE, qfalse);
		FUNC0(shader, GLSL_PRINTLOG_SHADER_INFO, qfalse);
		ri.Error(ERR_DROP, "Couldn't compile shader");
		return 0;
	}

	if (*prevShader)
	{
		FUNC5(program, *prevShader);
		FUNC4(*prevShader);
	}

	// attach shader to program
	FUNC1(program, shader);

	*prevShader = shader;

	return 1;
}