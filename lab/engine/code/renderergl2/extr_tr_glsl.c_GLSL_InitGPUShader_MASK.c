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
typedef  int /*<<< orphan*/  vpCode ;
typedef  int /*<<< orphan*/  shaderProgram_t ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  fpCode ;
typedef  int /*<<< orphan*/  GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(shaderProgram_t * program, const char *name,
	int attribs, qboolean fragmentShader, const GLchar *extra, qboolean addHeader,
	const char *fallback_vp, const char *fallback_fp)
{
	char vpCode[32000];
	char fpCode[32000];
	char *postHeader;
	int size;
	int result;

	size = sizeof(vpCode);
	if (addHeader)
	{
		FUNC0(GL_VERTEX_SHADER, extra, vpCode, size);
		postHeader = &vpCode[FUNC3(vpCode)];
		size -= FUNC3(vpCode);
	}
	else
	{
		postHeader = &vpCode[0];
	}

	if (!FUNC2(name, fallback_vp, GL_VERTEX_SHADER, postHeader, size))
	{
		return 0;
	}

	if (fragmentShader)
	{
		size = sizeof(fpCode);
		if (addHeader)
		{
			FUNC0(GL_FRAGMENT_SHADER, extra, fpCode, size);
			postHeader = &fpCode[FUNC3(fpCode)];
			size -= FUNC3(fpCode);
		}
		else
		{
			postHeader = &fpCode[0];
		}

		if (!FUNC2(name, fallback_fp, GL_FRAGMENT_SHADER, postHeader, size))
		{
			return 0;
		}
	}

	result = FUNC1(program, name, attribs, vpCode, fragmentShader ? fpCode : NULL);

	return result;
}