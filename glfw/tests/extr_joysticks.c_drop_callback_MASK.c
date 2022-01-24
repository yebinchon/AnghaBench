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
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 long FUNC2 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (long) ; 

__attribute__((used)) static void FUNC8(GLFWwindow* window, int count, const char* paths[])
{
    int i;

    for (i = 0;  i < count;  i++)
    {
        long size;
        char* text;
        FILE* stream = FUNC1(paths[i], "rb");
        if (!stream)
            continue;

        FUNC4(stream, 0, SEEK_END);
        size = FUNC5(stream);
        FUNC4(stream, 0, SEEK_SET);

        text = FUNC7(size + 1);
        text[size] = '\0';
        if (FUNC2(text, 1, size, stream) == size)
            FUNC6(text);

        FUNC3(text);
        FUNC0(stream);
    }
}