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
typedef  int /*<<< orphan*/  buf_stack ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int GLsizei ;
typedef  int GLint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(GLuint shader)
{
    if (!shader)
        return;

    GLint info_len = 0;
    FUNC3(shader, GL_INFO_LOG_LENGTH, &info_len);
    if (!info_len) {
        FUNC0("[GLES2][Shader] empty info\n");
        return;
    }

    char    buf_stack[32];
    char   *buf_heap = NULL;
    char   *buf      = buf_stack;
    GLsizei buf_len  = sizeof(buf_stack) - 1;
    if (info_len > sizeof(buf_stack)) {
        buf_heap = (char*) FUNC4(info_len + 1);
        if (buf_heap) {
            buf     = buf_heap;
            buf_len = info_len;
        }
    }

    FUNC2(shader, buf_len, NULL, buf);
    FUNC0("[GLES2][Shader] error %s\n", buf);

    if (buf_heap)
        FUNC1(buf_heap);
}