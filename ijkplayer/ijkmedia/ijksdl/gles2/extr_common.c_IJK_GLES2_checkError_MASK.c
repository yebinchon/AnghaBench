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
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 

void FUNC2(const char* op) {
    for (GLint error = FUNC1(); error; error = FUNC1()) {
        FUNC0("[GLES2] after %s() glError (0x%x)\n", op, error);
    }
}