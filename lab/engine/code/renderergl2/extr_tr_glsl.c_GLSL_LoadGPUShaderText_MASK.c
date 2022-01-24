#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int (* FS_ReadFile ) (char*,void**) ;int /*<<< orphan*/  (* FS_FreeFile ) (char*) ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char*) ;} ;
typedef  scalar_t__ GLenum ;
typedef  char GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*) ; 
 scalar_t__ GL_VERTEX_SHADER ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  PRINT_DEVELOPER ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 TYPE_2__* r_externalGLSL ; 
 TYPE_1__ ri ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char*,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(const char *name, const char *fallback,
	GLenum shaderType, char *dest, int destSize)
{
	char            filename[MAX_QPATH];
	GLchar      *buffer = NULL;
	const GLchar *shaderText = NULL;
	int             size;
	int             result;

	if(shaderType == GL_VERTEX_SHADER)
	{
		FUNC0(filename, sizeof(filename), "glsl/%s_vp.glsl", name);
	}
	else
	{
		FUNC0(filename, sizeof(filename), "glsl/%s_fp.glsl", name);
	}

	if ( r_externalGLSL->integer ) {
		size = ri.FS_ReadFile(filename, (void **)&buffer);
	} else {
		size = 0;
		buffer = NULL;
	}

	if(!buffer)
	{
		if (fallback)
		{
			ri.Printf(PRINT_DEVELOPER, "...loading built-in '%s'\n", filename);
			shaderText = fallback;
			size = FUNC2(shaderText);
		}
		else
		{
			ri.Printf(PRINT_DEVELOPER, "couldn't load '%s'\n", filename);
			return 0;
		}
	}
	else
	{
		ri.Printf(PRINT_DEVELOPER, "...loading '%s'\n", filename);
		shaderText = buffer;
	}

	if (size > destSize)
	{
		result = 0;
	}
	else
	{
		FUNC1(dest, shaderText, size + 1);
		result = 1;
	}

	if (buffer)
	{
		ri.FS_FreeFile(buffer);
	}
	
	return result;
}